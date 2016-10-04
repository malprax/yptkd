class SpecialAllowancesController < ApplicationController
  before_action :set_special_allowance, only: [:show, :edit, :update, :destroy]

  # GET /special_allowances
  # GET /special_allowances.json
  def index
    @special_allowances = SpecialAllowance.order('satuan asc')
    @title = 'Rincian Jabatan Khusus Dan Tunjangannya'
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'Rincian Jabatan Khusus Dan Tunjangannya',
        template: 'special_allowances/index.pdf.erb',
        layout: 'pdf.html.erb'
        # render :pdf => 'Kurikulum Teknik Elektro', :layout => 'Kurikulum Teknik Elektro.html'
      end
    end
  end

  # GET /special_allowances/1
  # GET /special_allowances/1.json
  def show
  end

  # GET /special_allowances/new
  def new
    @special_allowance = SpecialAllowance.new
  end

  # GET /special_allowances/1/edit
  def edit
  end

  # POST /special_allowances
  # POST /special_allowances.json
  def create
    @special_allowance = SpecialAllowance.new(special_allowance_params)

    respond_to do |format|
      if @special_allowance.save
        format.html { redirect_to special_allowances_path, notice: 'Special allowance was successfully created.' }
        format.json { render :show, status: :created, location: @special_allowance }
      else
        format.html { render :new }
        format.json { render json: @special_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_allowances/1
  # PATCH/PUT /special_allowances/1.json
  def update
    respond_to do |format|
      if @special_allowance.update(special_allowance_params)
        format.html { redirect_to special_allowances_path, notice: 'Special allowance was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_allowance }
      else
        format.html { render :edit }
        format.json { render json: @special_allowance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_allowances/1
  # DELETE /special_allowances/1.json
  def destroy
    @special_allowance.destroy
    respond_to do |format|
      format.html { redirect_to special_allowances_url, notice: 'Special allowance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_allowance
      @special_allowance = SpecialAllowance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_allowance_params
      params.require(:special_allowance).permit(:nama, :satuan)
    end
end
