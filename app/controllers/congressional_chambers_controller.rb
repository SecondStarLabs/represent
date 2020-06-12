class CongressionalChambersController < ApplicationController
  before_action :set_congressional_chamber, only: [:show, :edit, :update, :destroy]

  # GET /congressional_chambers
  # GET /congressional_chambers.json
  def index
    @congressional_chambers = CongressionalChamber.all
  end

  # GET /congressional_chambers/1
  # GET /congressional_chambers/1.json
  def show
  end

  # GET /congressional_chambers/new
  def new
    @congressional_chamber = CongressionalChamber.new
  end

  # GET /congressional_chambers/1/edit
  def edit
  end

  # POST /congressional_chambers
  # POST /congressional_chambers.json
  def create
    @congressional_chamber = CongressionalChamber.new(congressional_chamber_params)

    respond_to do |format|
      if @congressional_chamber.save
        format.html { redirect_to @congressional_chamber, notice: 'Congressional chamber was successfully created.' }
        format.json { render :show, status: :created, location: @congressional_chamber }
      else
        format.html { render :new }
        format.json { render json: @congressional_chamber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congressional_chambers/1
  # PATCH/PUT /congressional_chambers/1.json
  def update
    respond_to do |format|
      if @congressional_chamber.update(congressional_chamber_params)
        format.html { redirect_to @congressional_chamber, notice: 'Congressional chamber was successfully updated.' }
        format.json { render :show, status: :ok, location: @congressional_chamber }
      else
        format.html { render :edit }
        format.json { render json: @congressional_chamber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congressional_chambers/1
  # DELETE /congressional_chambers/1.json
  def destroy
    @congressional_chamber.destroy
    respond_to do |format|
      format.html { redirect_to congressional_chambers_url, notice: 'Congressional chamber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congressional_chamber
      @congressional_chamber = CongressionalChamber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def congressional_chamber_params
      params.require(:congressional_chamber).permit(:name)
    end
end
