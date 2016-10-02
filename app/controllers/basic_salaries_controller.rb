class BasicSalariesController < ApplicationController
  before_action :set_basic_salary, only: [:show, :edit, :update, :destroy]

  # GET /basic_salaries
  # GET /basic_salaries.json
  def index
    @basic_salaries = BasicSalary.all
  end

  # GET /basic_salaries/1
  # GET /basic_salaries/1.json
  def show
  end

  # GET /basic_salaries/new
  def new
    @basic_salary = BasicSalary.new
  end

  # GET /basic_salaries/1/edit
  def edit
  end

  # POST /basic_salaries
  # POST /basic_salaries.json
  def create
    @basic_salary = BasicSalary.new(basic_salary_params)

    respond_to do |format|
      if @basic_salary.save
        format.html { redirect_to @basic_salary, notice: 'Basic salary was successfully created.' }
        format.json { render :show, status: :created, location: @basic_salary }
      else
        format.html { render :new }
        format.json { render json: @basic_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basic_salaries/1
  # PATCH/PUT /basic_salaries/1.json
  def update
    respond_to do |format|
      if @basic_salary.update(basic_salary_params)
        format.html { redirect_to @basic_salary, notice: 'Basic salary was successfully updated.' }
        format.json { render :show, status: :ok, location: @basic_salary }
      else
        format.html { render :edit }
        format.json { render json: @basic_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basic_salaries/1
  # DELETE /basic_salaries/1.json
  def destroy
    @basic_salary.destroy
    respond_to do |format|
      format.html { redirect_to basic_salaries_url, notice: 'Basic salary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basic_salary
      @basic_salary = BasicSalary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basic_salary_params
      params.require(:basic_salary).permit(:golongan, :satuan)
    end
end
