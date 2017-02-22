class PrintedDesignsController < ApplicationController
  before_action :set_printed_design, only: [:show, :edit, :update, :destroy]

  # GET /printed_designs
  # GET /printed_designs.json
  def index
    @printed_designs = PrintedDesign.all
  end

  # GET /printed_designs/1
  # GET /printed_designs/1.json
  def show
  end

  # GET /printed_designs/new
  def new
    @printed_design = PrintedDesign.new
  end

  # GET /printed_designs/1/edit
  def edit
  end

  # POST /printed_designs
  # POST /printed_designs.json
  def create
    @printed_design = PrintedDesign.new(printed_design_params)

    respond_to do |format|
      if @printed_design.save
        format.html { redirect_to @printed_design, notice: 'Printed design was successfully created.' }
        format.json { render :show, status: :created, location: @printed_design }
      else
        format.html { render :new }
        format.json { render json: @printed_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /printed_designs/1
  # PATCH/PUT /printed_designs/1.json
  def update
    respond_to do |format|
      if @printed_design.update(printed_design_params)
        format.html { redirect_to @printed_design, notice: 'Printed design was successfully updated.' }
        format.json { render :show, status: :ok, location: @printed_design }
      else
        format.html { render :edit }
        format.json { render json: @printed_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /printed_designs/1
  # DELETE /printed_designs/1.json
  def destroy
    @printed_design.destroy
    respond_to do |format|
      format.html { redirect_to printed_designs_url, notice: 'Printed design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_printed_design
      @printed_design = PrintedDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def printed_design_params
      params.require(:printed_design).permit(:client, :lead_image, :secondary_image, :date, :description)
    end
end
