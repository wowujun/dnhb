class AdvertisementsController < ApplicationController
  before_action :authorize
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]

  # GET /advertisements
  # GET /advertisements.json
  def index
    @advertisements = Advertisement.all
  end

  # GET /advertisements/1
  # GET /advertisements/1.json
  def show
  end

  # GET /advertisements/new
  def new
    @advertisement = Advertisement.new
  end

  # GET /advertisements/1/edit
  def edit
  end

  # POST /advertisements
  # POST /advertisements.json
  def create
    @advertisement = Advertisement.new(advertisement_params)

    respond_to do |format|
      if @advertisement.save
        format.html { redirect_to @advertisement, notice: '图片上传成功！' }
        format.json { render :show, status: :created, location: @advertisement }
      else
        format.html { render :new }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advertisements/1
  # PATCH/PUT /advertisements/1.json
  def update
    respond_to do |format|
      if @advertisement.update(advertisement_params)
        format.html { redirect_to @advertisement, notice: '图片修改成功！' }
        format.json { render :show, status: :ok, location: @advertisement }
      else
        format.html { render :edit }
        format.json { render json: @advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertisements/1
  # DELETE /advertisements/1.json
  def destroy
    @advertisement.destroy
    respond_to do |format|
      format.html { redirect_to advertisements_url, notice: '广告删除成功！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertisement_params
      params.require(:advertisement).permit(:title, :image, :content,:avatar)
    end
end
