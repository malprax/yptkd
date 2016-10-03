class FunctionalAllowancesController < ApplicationController
  before_action :set_functional_allowance, only: [:show, :edit, :update, :destroy]

  # GET /functional_allowances
  # GET /functional_allowances.json
  def index
    @functional_allowances = FunctionalAllowance.order('satuan asc')
  end

  # GET /functional_allowances/1
  # GET /functional_allowances/1.json
  def show
  end

  # GET /functional_allowances/new
  def new
    @functional_allowance = FunctionalAllowance.new
  end

  # GET /functional_allowances/1/edit
  def edit
  end

  # POST /functional_allowances
  # POST /functional_allowances.json
  def create
    @functional_allowance = FunctionalAllowance.new(functional_allowance_params)

    respond_to do |format|
      if @functional_allowance.save
        format.html { redirect_to functional_allowances_path, notice: 'Functional allowance was successfully created.' }
        format.json { render :show, status: :created, location: @functional_allowance }
      else
        format.html { render :new }
        format.json { render json: @functional_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /functional_allowances/1
  # PATCH/PUT /functional_allowances/1.json
  def update
    respond_to do |format|
      if @functional_allowance.update(functional_allowance_params)
        format.html { redirect_to functional_allowances_path, notice: 'Functional allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @functional_allowance }
      else
        format.html { render :edit }
        format.json { render json: @functional_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_allowances/1
  # DELETE /functional_allowances/1.json
  def destroy
    @functional_allowance.destroy
    respond_to do |format|
      format.html { redirect_to functional_allowances_url, notice: 'Functional allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_functional_allowance
      @functional_allowance = FunctionalAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def functional_allowance_params
      params.require(:functional_allowance).permit(:nama, :satuan)
    end
end
