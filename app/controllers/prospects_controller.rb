class ProspectsController < ApplicationController
  before_action :set_prospect, only: %i[ show edit update destroy ]

  def index
    @prospects = Prospect.all
  end

  def show
  end

  def new
    @prospect = Prospect.new
  end

  def edit
  end

  def create
    @prospect = Prospect.new(prospect_params)

    respond_to do |format|
      if @prospect.save
        format.html { redirect_to prospect_url(@prospect), notice: "Prospect was successfully created." }
        format.json { render :show, status: :created, location: @prospect }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @prospect.update(prospect_params)
        format.html { redirect_to prospect_url(@prospect), notice: "Prospect was successfully updated." }
        format.json { render :show, status: :ok, location: @prospect }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prospect.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @prospect.destroy

    respond_to do |format|
      format.html { redirect_to prospects_url, notice: "Prospect was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_prospect
      @prospect = Prospect.find(params[:id])
    end

    def prospect_params
      params.require(:prospect).permit(:name, :email, :group, :group_name, :cpf, :phone, :birth_date, :address)
    end
end
