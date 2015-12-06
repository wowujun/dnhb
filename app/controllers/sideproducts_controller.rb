class SideproductsController < ApplicationController
  before_action :authorize
  before_action :set_sideproduct, only: [:show, :edit, :update, :destroy]

  # GET /sideproducts
  # GET /sideproducts.json
  def index
    @sideproducts = Sideproduct.all.paginate(page: params[:page],per_page:1)
  end

  # GET /sideproducts/1
  # GET /sideproducts/1.json
  def show
  end

  # GET /sideproducts/new
  def new
    @sideproduct = Sideproduct.new
  end

  # GET /sideproducts/1/edit
  def edit
  end

  # POST /sideproducts
  # POST /sideproducts.json
  def create
    @sideproduct = Sideproduct.new(sideproduct_params)

    respond_to do |format|
      if @sideproduct.save
        format.html { redirect_to @sideproduct, notice: 'Sideproduct was successfully created.' }
        format.json { render :show, status: :created, location: @sideproduct }
      else
        format.html { render :new }
        format.json { render json: @sideproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sideproducts/1
  # PATCH/PUT /sideproducts/1.json
  def update
    respond_to do |format|
      if @sideproduct.update(sideproduct_params)
        format.html { redirect_to @sideproduct, notice: 'Sideproduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @sideproduct }
      else
        format.html { render :edit }
        format.json { render json: @sideproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sideproducts/1
  # DELETE /sideproducts/1.json
  def destroy
    @sideproduct.destroy
    respond_to do |format|
      format.html { redirect_to sideproducts_url, notice: 'Sideproduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sideproduct
      @sideproduct = Sideproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sideproduct_params
      params.require(:sideproduct).permit(:title, :image, :content,:sidecla_id)
    end
end
