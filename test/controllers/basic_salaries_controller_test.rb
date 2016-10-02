require 'test_helper'

class BasicSalariesControllerTest < ActionController::TestCase
  setup do
    @basic_salary = basic_salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basic_salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basic_salary" do
    assert_difference('BasicSalary.count') do
      post :create, basic_salary: { golongan: @basic_salary.golongan, satuan: @basic_salary.satuan }
    end

    assert_redirected_to basic_salary_path(assigns(:basic_salary))
  end

  test "should show basic_salary" do
    get :show, id: @basic_salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basic_salary
    assert_response :success
  end

  test "should update basic_salary" do
    patch :update, id: @basic_salary, basic_salary: { golongan: @basic_salary.golongan, satuan: @basic_salary.satuan }
    assert_redirected_to basic_salary_path(assigns(:basic_salary))
  end

  test "should destroy basic_salary" do
    assert_difference('BasicSalary.count', -1) do
      delete :destroy, id: @basic_salary
    end

    assert_redirected_to basic_salaries_path
  end
end
