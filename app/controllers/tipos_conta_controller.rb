class TiposContaController < ApplicationController
  before_action :set_tipo_conta, only: [:show, :edit, :update, :destroy]
  # GET /tipos_conta
  def index
    @tipos_conta = TipoConta.all
  end
  # GET /tipos_conta/1
  def show
    @tipo_conta = TipoConta.find(params[:id])
  end

  # GET /tipos_conta/new
  def new
    @tipo_conta = TipoConta.new
  end

  # GET /tipos_conta/1/edit
  def edit
    @tipo_conta = TipoConta.find(params[:id])
  end

  # POST /tipos_conta
  def create
    @tipo_conta = TipoConta.new(tipo_conta_params)

    if @tipo_conta.save
      redirect_to @tipo_conta, notice: t('.success')
    else
      render :new
    end
  end
  # PATCH/PUT /tipos_conta/1
  def update
    if @tipo_conta.update(tipo_conta_params)
      redirect_to @tipo_conta, notice: t('.success')
    else
      render :edit
    end
  end
  # DELETE /tipos_conta/1
  def destroy
    @tipo_conta.destroy
    redirect_to tipos_conta_url, notice: t('.success')
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_conta
      @tipo_conta = TipoConta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_conta_params
      params.require(:tipo_conta).permit(:codigo, :nome)
    end
end
