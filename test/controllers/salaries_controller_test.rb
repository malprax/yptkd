require 'test_helper'

class SalariesControllerTest < ActionController::TestCase
  setup do
    @salary = salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salary" do
    assert_difference('Salary.count') do
      post :create, salary: { form_number: @salary.form_number, lecture_id: @salary.lecture_id, period_id: @salary.period_id, regular_gathering: @salary.regular_gathering, tax: @salary.tax, total: @salary.total }
    end

    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should show salary" do
    get :show, id: @salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salary
    assert_response :success
  end

  test "should update salary" do
    patch :update, id: @salary, salary: { form_number: @salary.form_number, lecture_id: @salary.lecture_id, period_id: @salary.period_id, regular_gathering: @salary.regular_gathering, tax: @salary.tax, total: @salary.total }
    assert_redirected_to salary_path(assigns(:salary))
  end

  test "should destroy salary" do
    assert_difference('Salary.count', -1) do
      delete :destroy, id: @salary
    end

    assert_redirected_to salaries_path
  end
end
