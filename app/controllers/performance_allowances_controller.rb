class PerformanceAllowancesController < ApplicationController
  before_action :set_performance_allowance, only: [:show, :edit, :update, :destroy]

  # GET /performance_allowances
  # GET /performance_allowances.json
  def index
    @performance_allowances = PerformanceAllowance.all
  end

  # GET /performance_allowances/1
  # GET /performance_allowances/1.json
  def show
  end

  # GET /performance_allowances/new
  def new
    @performance_allowance = PerformanceAllowance.new
  end

  # GET /performance_allowances/1/edit
  def edit
  end

  # POST /performance_allowances
  # POST /performance_allowances.json
  def create
    @performance_allowance = PerformanceAllowance.new(performance_allowance_params)

    respond_to do |format|
      if @performance_allowance.save
        format.html { redirect_to performance_allowances_path, notice: 'Performance allowance was successfully created.' }
        format.json { render :show, status: :created, location: @performance_allowance }
      else
        format.html { render :new }
        format.json { render json: @performance_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /performance_allowances/1
  # PATCH/PUT /performance_allowances/1.json
  def update
    respond_to do |format|
      if @performance_allowance.update(performance_allowance_params)
        format.html { redirect_to performance_allowances_path, notice: 'Performance allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @performance_allowance }
      else
        format.html { render :edit }
        format.json { render json: @performance_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /performance_allowances/1
  # DELETE /performance_allowances/1.json
  def destroy
    @performance_allowance.destroy
    respond_to do |format|
      format.html { redirect_to performance_allowances_url, notice: 'Performance allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_performance_allowance
      @performance_allowance = PerformanceAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def performance_allowance_params
      params.require(:performance_allowance).permit(:range_mahasiswa, :satuan)
    end
end
