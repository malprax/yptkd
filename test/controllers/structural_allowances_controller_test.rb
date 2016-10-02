require 'test_helper'

class StructuralAllowancesControllerTest < ActionController::TestCase
  setup do
    @structural_allowance = structural_allowances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:structural_allowances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create structural_allowance" do
    assert_difference('StructuralAllowance.count') do
      post :create, structural_allowance: { nama: @structural_allowance.nama, satuan: @structural_allowance.satuan }
    end

    assert_redirected_to structural_allowance_path(assigns(:structural_allowance))
  end

  test "should show structural_allowance" do
    get :show, id: @structural_allowance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @structural_allowance
    assert_response :success
  end

  test "should update structural_allowance" do
    patch :update, id: @structural_allowance, structural_allowance: { nama: @structural_allowance.nama, satuan: @structural_allowance.satuan }
    assert_redirected_to structural_allowance_path(assigns(:structural_allowance))
  end

  test "should destroy structural_allowance" do
    assert_difference('StructuralAllowance.count', -1) do
      delete :destroy, id: @structural_allowance
    end

    assert_redirected_to structural_allowances_path
  end
end
