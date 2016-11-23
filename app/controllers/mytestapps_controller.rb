class MytestappsController < ApplicationController
  before_action :set_mytestapp, only: [:show, :edit, :update, :destroy]

  # GET /mytestapps
  # GET /mytestapps.json
  def index
    @mytestapps = Mytestapp.all
  end

  # GET /mytestapps/1
  # GET /mytestapps/1.json
  def show
  end

  # GET /mytestapps/new
  def new
    @mytestapp = Mytestapp.new
  end

  # GET /mytestapps/1/edit
  def edit
  end

  # POST /mytestapps
  # POST /mytestapps.json
  def create
    @mytestapp = Mytestapp.new(mytestapp_params)

    respond_to do |format|
      if @mytestapp.save
        format.html { redirect_to @mytestapp, notice: 'Mytestapp was successfully created.' }
        format.json { render :show, status: :created, location: @mytestapp }
      else
        format.html { render :new }
        format.json { render json: @mytestapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mytestapps/1
  # PATCH/PUT /mytestapps/1.json
  def update
    respond_to do |format|
      if @mytestapp.update(mytestapp_params)
        format.html { redirect_to @mytestapp, notice: 'Mytestapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @mytestapp }
      else
        format.html { render :edit }
        format.json { render json: @mytestapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mytestapps/1
  # DELETE /mytestapps/1.json
  def destroy
    @mytestapp.destroy
    respond_to do |format|
      format.html { redirect_to mytestapps_url, notice: 'Mytestapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mytestapp
      @mytestapp = Mytestapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mytestapp_params
      params.fetch(:mytestapp, {})
    end
end
