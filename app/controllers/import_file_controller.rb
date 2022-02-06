require 'roo'

class ImportFileController < ApplicationController
  def index
  end

  def import
    file = params[:file]
    xlsx = Roo::Excelx.new(file)
    my_hash = {}
    xlsx.sheet(0).each(
      name: 'Nome',
      email: 'E-mail',
      group: 'Grupo',
      group_name: 'Nome do Grupo',
      cpf: 'CPF',
      phone: 'Telefone',
      birth_date: 'Data Nascto',
      address: 'End.') do |hash|
        next if hash[:name] == 'Nome'
        Prospect.create(hash)
      end

      redirect_to prospects_url, notice: "Prospects was successfully imported."
  end
end
