class SideaboutsController < ApplicationController
  before_action :authorize
  before_action :set_sideabout, only: [:show, :edit, :update, :destroy]

  # GET /sideabouts
  # GET /sideabouts.json
  def index
    @sideabouts = Sideabout.all
  end

  # GET /sideabouts/1
  # GET /sideabouts/1.json
  def show
  end

  # GET /sideabouts/new
  def new
    @sideabout = Sideabout.new
  end

  # GET /sideabouts/1/edit
  def edit
  end

  # POST /sideabouts
  # POST /sideabouts.json
  def create
    @sideabout = Sideabout.new(sideabout_params)

    respond_to do |format|
      if @sideabout.save
        format.html { redirect_to @sideabout, notice: '信息添加成功！' }
        format.json { render :show, status: :created, location: @sideabout }
      else
        format.html { render :new }
        format.json { render json: @sideabout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sideabouts/1
  # PATCH/PUT /sideabouts/1.json
  def update
    respond_to do |format|
      if @sideabout.update(sideabout_params)
        format.html { redirect_to @sideabout, notice: '信息更新成功！' }
        format.json { render :show, status: :ok, location: @sideabout }
      else
        format.html { render :edit }
        format.json { render json: @sideabout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sideabouts/1
  # DELETE /sideabouts/1.json
  def destroy
    @sideabout.destroy
    respond_to do |format|
      format.html { redirect_to sideabouts_url, notice: '信息删除成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sideabout
      @sideabout = Sideabout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sideabout_params
      params.require(:sideabout).permit(:about, :culture, :qualification, :concept, :speech)
    end
end
