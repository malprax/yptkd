require 'test_helper'

class LecturesControllerTest < ActionController::TestCase
  setup do
    @lecture = lectures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lectures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecture" do
    assert_difference('Lecture.count') do
      post :create, lecture: { education_id: @lecture.education_id, functional_allowance_id: @lecture.functional_allowance_id, nama: @lecture.nama, nidn: @lecture.nidn, special_allowance_id: @lecture.special_allowance_id, structural_allowance_id: @lecture.structural_allowance_id }
    end

    assert_redirected_to lecture_path(assigns(:lecture))
  end

  test "should show lecture" do
    get :show, id: @lecture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecture
    assert_response :success
  end

  test "should update lecture" do
    patch :update, id: @lecture, lecture: { education_id: @lecture.education_id, functional_allowance_id: @lecture.functional_allowance_id, nama: @lecture.nama, nidn: @lecture.nidn, special_allowance_id: @lecture.special_allowance_id, structural_allowance_id: @lecture.structural_allowance_id }
    assert_redirected_to lecture_path(assigns(:lecture))
  end

  test "should destroy lecture" do
    assert_difference('Lecture.count', -1) do
      delete :destroy, id: @lecture
    end

    assert_redirected_to lectures_path
  end
end
