# encoding: utf-8
class SideshixtsController < ApplicationController
  before_action :authorize
  before_action :set_sideshixt, only: [:show, :edit, :update, :destroy]

  # GET /sideshixts
  # GET /sideshixts.json
  def index
    @sideshixts = Sideshixt.all.paginate(page: params[:page],per_page:15).order("id desc")
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
        format.html { redirect_to @sideshixt, notice: 'Sideshixt was successfully created.' }
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
        format.html { redirect_to @sideshixt, notice: 'Sideshixt was successfully updated.' }
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
      format.html { redirect_to sideshixts_url, notice: 'Sideshixt was successfully destroyed.' }
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
      params.require(:sideshixt).permit(:title, :date, :content)
    end
end
