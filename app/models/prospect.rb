class Prospect < ApplicationRecord
  validates :cpf, uniqueness: true

  before_validation :clear_cpf
  before_validation :convert_date

  def clear_cpf
    cpf&.gsub!(/\D/, '')
  end

  def convert_date
    birth_date = Date.parse(birth_date) if birth_date.instance_of?(String)
  end
end
