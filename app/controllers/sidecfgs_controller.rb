class SidecfgsController < ApplicationController
  before_action :authorize
  before_action :set_sidecfg, only: [:show, :edit, :update, :destroy]

  # GET /sidecfgs
  # GET /sidecfgs.json
  def index
    @sidecfgs = Sidecfg.all
  end

  # GET /sidecfgs/1
  # GET /sidecfgs/1.json
  def show
  end

  # GET /sidecfgs/new
  def new
    @sidecfg = Sidecfg.new
  end

  # GET /sidecfgs/1/edit
  def edit
  end

  # POST /sidecfgs
  # POST /sidecfgs.json
  def create
    @sidecfg = Sidecfg.new(sidecfg_params)

    respond_to do |format|
      if @sidecfg.save
        format.html { redirect_to @sidecfg, notice: 'Sidecfg was successfully created.' }
        format.json { render :show, status: :created, location: @sidecfg }
      else
        format.html { render :new }
        format.json { render json: @sidecfg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidecfgs/1
  # PATCH/PUT /sidecfgs/1.json
  def update

      if @sidecfg.update(sidecfg_params)
        redirect_to :action => 'index'
      else
        redirect_to :action => 'new'
      end

  end

  # DELETE /sidecfgs/1
  # DELETE /sidecfgs/1.json
  def destroy
    @sidecfg.destroy
    respond_to do |format|
      format.html { redirect_to sidecfgs_url, notice: 'Sidecfg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidecfg
      @sidecfg = Sidecfg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidecfg_params
      params.require(:sidecfg).permit(:company, :tel, :fax, :address, :dingyuhao,:image)
    end
end
