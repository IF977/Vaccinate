class MeuperfilsController < ApplicationController
  before_action :set_meuperfil, only: [:show, :edit, :update, :destroy]

  # GET /meuperfils
  # GET /meuperfils.json
  def index
    @meuperfils = Meuperfil.all
    dados_brutos =  HTTParty.get("http://dados.recife.pe.gov.br/api/action/datastore_search?resource_id=8222148c-14d1-47ba-ae0e-39c879246284")
    @vacinacao_JSON = JSON.parse(dados_brutos.body)
    @vacinacao = @vacinacao_JSON["result"]["records"]
    @vacinas_tomadas = nil
  end
  dados_brutos =  HTTParty.get("http://dados.recife.pe.gov.br/api/action/datastore_search?resource_id=8222148c-14d1-47ba-ae0e-39c879246284")
  @vacinacao_JSON = JSON.parse(dados_brutos.body)
  @vacinacao = @vacinacao_JSON["result"]["records"]
  @vacinas_tomadas = nil
  #inicializei dentro, fora e os dois ao mesmo tempo e não funcionou
  # GET /meuperfils/1
  # GET /meuperfils/1.json
  def show
  end

  # GET /meuperfils/new
  def new
    @meuperfil = Meuperfil.new
  end

  # GET /meuperfils/1/edit
  def edit
  end

  # POST /meuperfils
  # POST /meuperfils.json
  def create
    @meuperfil = Meuperfil.new(meuperfil_params)

    respond_to do |format|
      if @meuperfil.save
        format.html { redirect_to @meuperfil, notice: 'Meuperfil was successfully created.' }
        format.json { render :show, status: :created, location: @meuperfil }
      else
        format.html { render :new }
        format.json { render json: @meuperfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meuperfils/1
  # PATCH/PUT /meuperfils/1.json
  def update
    respond_to do |format|
      if @meuperfil.update(meuperfil_params)
        format.html { redirect_to @meuperfil, notice: 'Meuperfil was successfully updated.' }
        format.json { render :show, status: :ok, location: @meuperfil }
      else
        format.html { render :edit }
        format.json { render json: @meuperfil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meuperfils/1
  # DELETE /meuperfils/1.json
  def destroy
    @meuperfil.destroy
    respond_to do |format|
      format.html { redirect_to meuperfils_url, notice: 'Meuperfil was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meuperfil
      @meuperfil = Meuperfil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meuperfil_params
      params.require(:meuperfil).permit(:nome, :idade, :vacina_tomada)
    end
end
