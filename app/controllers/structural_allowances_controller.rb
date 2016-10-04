class StructuralAllowancesController < ApplicationController
  before_action :set_structural_allowance, only: [:show, :edit, :update, :destroy]

  # GET /structural_allowances
  # GET /structural_allowances.json
  def index
    @structural_allowances = StructuralAllowance.order('satuan asc')
    @title = 'Rincian Jabatan Struktural Dan Tunjangannya'
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Rincian Jabatan Struktural Dan Tunjangannya',
        template: 'structural_allowances/index.pdf.erb',
        layout: 'pdf.html.erb'
        # render :pdf => 'Kurikulum Teknik Elektro', :layout => 'Kurikulum Teknik Elektro.html'
      end
    end
  end

  # GET /structural_allowances/1
  # GET /structural_allowances/1.json
  def show
  end

  # GET /structural_allowances/new
  def new
    @structural_allowance = StructuralAllowance.new
  end

  # GET /structural_allowances/1/edit
  def edit
  end

  # POST /structural_allowances
  # POST /structural_allowances.json
  def create
    @structural_allowance = StructuralAllowance.new(structural_allowance_params)

    respond_to do |format|
      if @structural_allowance.save
        format.html { redirect_to structural_allowances_path, notice: 'Structural allowance was successfully created.' }
        format.json { render :show, status: :created, location: @structural_allowance }
      else
        format.html { render :new }
        format.json { render json: @structural_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /structural_allowances/1
  # PATCH/PUT /structural_allowances/1.json
  def update
    respond_to do |format|
      if @structural_allowance.update(structural_allowance_params)
        format.html { redirect_to structural_allowances_path, notice: 'Structural allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @structural_allowance }
      else
        format.html { render :edit }
        format.json { render json: @structural_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structural_allowances/1
  # DELETE /structural_allowances/1.json
  def destroy
    @structural_allowance.destroy
    respond_to do |format|
      format.html { redirect_to structural_allowances_url, notice: 'Structural allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_structural_allowance
      @structural_allowance = StructuralAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def structural_allowance_params
      params.require(:structural_allowance).permit(:nama, :satuan)
    end
end
