class ZahlsController < ApplicationController
  before_action :set_zahl, only: [:show, :edit, :update, :destroy]

  # GET /zahls
  # GET /zahls.json
  def index
    @zahls = Zahl.all
  end

  # GET /zahls/1
  # GET /zahls/1.json
  def show
  end

  # GET /zahls/new
  def new
    @zahl = Zahl.new
  end

  # GET /zahls/1/edit
  def edit
  end

  # POST /zahls
  # POST /zahls.json
  def create
    @zahl = Zahl.new(zahl_params)

    respond_to do |format|
      if @zahl.save
        format.html { redirect_to @zahl, notice: 'Zahl was successfully created.' }
        format.json { render action: 'show', status: :created, location: @zahl }
      else
        format.html { render action: 'new' }
        format.json { render json: @zahl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zahls/1
  # PATCH/PUT /zahls/1.json
  def update
    respond_to do |format|
      if @zahl.update(zahl_params)
        format.html { redirect_to @zahl, notice: 'Zahl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @zahl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zahls/1
  # DELETE /zahls/1.json
  def destroy
    @zahl.destroy
    respond_to do |format|
      format.html { redirect_to zahls_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zahl
      @zahl = Zahl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zahl_params
      params.require(:zahl).permit(:zahl)
    end
end
