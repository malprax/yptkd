require 'test_helper'

class PerformanceAllowancesControllerTest < ActionController::TestCase
  setup do
    @performance_allowance = performance_allowances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_allowances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_allowance" do
    assert_difference('PerformanceAllowance.count') do
      post :create, performance_allowance: { range_mahasiswa: @performance_allowance.range_mahasiswa, satuan: @performance_allowance.satuan }
    end

    assert_redirected_to performance_allowance_path(assigns(:performance_allowance))
  end

  test "should show performance_allowance" do
    get :show, id: @performance_allowance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance_allowance
    assert_response :success
  end

  test "should update performance_allowance" do
    patch :update, id: @performance_allowance, performance_allowance: { range_mahasiswa: @performance_allowance.range_mahasiswa, satuan: @performance_allowance.satuan }
    assert_redirected_to performance_allowance_path(assigns(:performance_allowance))
  end

  test "should destroy performance_allowance" do
    assert_difference('PerformanceAllowance.count', -1) do
      delete :destroy, id: @performance_allowance
    end

    assert_redirected_to performance_allowances_path
  end
end
