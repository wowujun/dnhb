# encoding: utf-8
class SideshixtsController < ApplicationController
  before_action :authorize
  before_action :set_sideshixt, only: [:show, :edit, :update, :destroy]

  # GET /sideshixts
  # GET /sideshixts.json
  def index
    #@sideshixts = Sideshixt.all.find(,:conditions => ["select *from(select * from sideshixts order by date desc) c order by status desc"]).paginate(page: params[:page],per_page:2)

    #@sideshixt = Sideshixt.find_by_sql("select *from(select * from sideshixts order by date desc) b order by status desc")
    @sideshixts = Sideshixt.paginate(page:params[:page],per_page:15).order("status desc,date desc")























      # @sideshixt = Sideshixt.order(date: :asc)
    # @sideshixts =  @sideshixt.paginate(page: params[:page],per_page:20).order(status: :asc)
   #@sideshixts = @sideshixts.paginate(page: params[:page],per_page:2)
  end

  # GET /sideshixts/1
  # GET /sideshixts/1.json
  def show
  end

  # GET /sideshixts/new
  def new
    @sideshixt = Sideshixt.new
  end

  # GET /sideshixts/1/edit
  def edit
  end

  # POST /sideshixts
  # POST /sideshixts.json
  def create
    @sideshixt = Sideshixt.new(sideshixt_params)

    respond_to do |format|
      if @sideshixt.save
        format.html { redirect_to @sideshixt, notice: '时讯录入成功！' }
        format.json { render :show, status: :created, location: @sideshixt }
      else
        format.html { render :new }
        format.json { render json: @sideshixt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sideshixts/1
  # PATCH/PUT /sideshixts/1.json
  def update
    respond_to do |format|
      if @sideshixt.update(sideshixt_params)
        format.html { redirect_to @sideshixt, notice: '时讯更新成功！' }
        format.json { render :show, status: :ok, location: @sideshixt }
      else
        format.html { render :edit }
        format.json { render json: @sideshixt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sideshixts/1
  # DELETE /sideshixts/1.json
  def destroy
    @sideshixt.destroy
    respond_to do |format|
      format.html { redirect_to sideshixts_url, notice: '时讯删除成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sideshixt
      @sideshixt = Sideshixt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sideshixt_params
      params.require(:sideshixt).permit(:title, :date, :content,:status)
    end
end
