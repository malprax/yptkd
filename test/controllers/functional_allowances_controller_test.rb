require 'test_helper'

class FunctionalAllowancesControllerTest < ActionController::TestCase
  setup do
    @functional_allowance = functional_allowances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:functional_allowances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create functional_allowance" do
    assert_difference('FunctionalAllowance.count') do
      post :create, functional_allowance: { nama: @functional_allowance.nama, satuan: @functional_allowance.satuan }
    end

    assert_redirected_to functional_allowance_path(assigns(:functional_allowance))
  end

  test "should show functional_allowance" do
    get :show, id: @functional_allowance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @functional_allowance
    assert_response :success
  end

  test "should update functional_allowance" do
    patch :update, id: @functional_allowance, functional_allowance: { nama: @functional_allowance.nama, satuan: @functional_allowance.satuan }
    assert_redirected_to functional_allowance_path(assigns(:functional_allowance))
  end

  test "should destroy functional_allowance" do
    assert_difference('FunctionalAllowance.count', -1) do
      delete :destroy, id: @functional_allowance
    end

    assert_redirected_to functional_allowances_path
  end
end
