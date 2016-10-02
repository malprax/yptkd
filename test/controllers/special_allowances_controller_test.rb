require 'test_helper'

class SpecialAllowancesControllerTest < ActionController::TestCase
  setup do
    @special_allowance = special_allowances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_allowances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_allowance" do
    assert_difference('SpecialAllowance.count') do
      post :create, special_allowance: { nama: @special_allowance.nama, satuan: @special_allowance.satuan }
    end

    assert_redirected_to special_allowance_path(assigns(:special_allowance))
  end

  test "should show special_allowance" do
    get :show, id: @special_allowance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_allowance
    assert_response :success
  end

  test "should update special_allowance" do
    patch :update, id: @special_allowance, special_allowance: { nama: @special_allowance.nama, satuan: @special_allowance.satuan }
    assert_redirected_to special_allowance_path(assigns(:special_allowance))
  end

  test "should destroy special_allowance" do
    assert_difference('SpecialAllowance.count', -1) do
      delete :destroy, id: @special_allowance
    end

    assert_redirected_to special_allowances_path
  end
end
