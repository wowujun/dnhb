# encoding: utf-8
class ClasscasController < ApplicationController
  before_action :set_classca, only: [:show, :edit, :update, :destroy]

  # GET /classcas
  # GET /classcas.json
  def index
    @classcas = Classca.all.paginate(page: params[:page],per_page:15).order("id desc")
  end

  # GET /classcas/1
  # GET /classcas/1.json
  def show
  end

  # GET /classcas/new
  def new
    @classca = Classca.new
  end

  # GET /classcas/1/edit
  def edit
  end

  # POST /classcas
  # POST /classcas.json
  def create
    @classca = Classca.new(classca_params)

    respond_to do |format|
      if @classca.save
        format.html { redirect_to @classca, notice: '案例添加成功！' }
        format.json { render :show, status: :created, location: @classca }
      else
        format.html { render :new }
        format.json { render json: @classca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classcas/1
  # PATCH/PUT /classcas/1.json
  def update
    respond_to do |format|
      if @classca.update(classca_params)
        format.html { redirect_to @classca, notice: '案例修改成功！' }
        format.json { render :show, status: :ok, location: @classca }
      else
        format.html { render :edit }
        format.json { render json: @classca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classcas/1
  # DELETE /classcas/1.json
  def destroy
    @classca.destroy
    respond_to do |format|
      format.html { redirect_to classcas_url, notice: '案例成功删除！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classca
      @classca = Classca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classca_params
      params.require(:classca).permit(:title, :image, :content, :time)
    end
end
