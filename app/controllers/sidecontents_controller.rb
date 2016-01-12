# encoding: utf-8
class SidecontentsController < ApplicationController
  before_action :authorize
  before_action :set_sidecontent, only: [:show, :edit, :update, :destroy]

  # GET /sidecontents
  # GET /sidecontents.json
  def index
    @sidecontents = Sidecontent.all.paginate(page: params[:page],per_page:15).order("id desc")
  end

  # GET /sidecontents/1
  # GET /sidecontents/1.json
  def show
  end

  # GET /sidecontents/new
  def new
    @sidecontent = Sidecontent.new
  end

  # GET /sidecontents/1/edit
  def edit
  end

  # POST /sidecontents
  # POST /sidecontents.json
  def create
    @sidecontent = Sidecontent.new(sidecontent_params)

    respond_to do |format|
      if @sidecontent.save
        format.html { redirect_to @sidecontent, notice: '新闻创建成功！' }
        format.json { render :show, status: :created, location: @sidecontent }
      else
        format.html { render :new }
        format.json { render json: @sidecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sidecontents/1
  # PATCH/PUT /sidecontents/1.json
  def update
    respond_to do |format|
      if @sidecontent.update(sidecontent_params)
        format.html { redirect_to @sidecontent, notice: '新闻更新成功！' }
        format.json { render :show, status: :ok, location: @sidecontent }
      else
        format.html { render :edit }
        format.json { render json: @sidecontent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sidecontents/1
  # DELETE /sidecontents/1.json
  def destroy
    @sidecontent.destroy
    respond_to do |format|
      format.html { redirect_to sidecontents_url, notice: '新闻删除成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sidecontent
      @sidecontent = Sidecontent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sidecontent_params
      params.require(:sidecontent).permit(:title, :date, :content)
    end
end
