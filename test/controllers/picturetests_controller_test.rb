require 'test_helper'

class PicturetestsControllerTest < ActionController::TestCase
  setup do
    @picturetest = picturetests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picturetests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picturetest" do
    assert_difference('Picturetest.count') do
      post :create, picturetest: { answer: @picturetest.answer, hint: @picturetest.hint, picture: @picturetest.picture }
    end

    assert_redirected_to picturetest_path(assigns(:picturetest))
  end

  test "should show picturetest" do
    get :show, id: @picturetest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @picturetest
    assert_response :success
  end

  test "should update picturetest" do
    patch :update, id: @picturetest, picturetest: { answer: @picturetest.answer, hint: @picturetest.hint, picture: @picturetest.picture }
    assert_redirected_to picturetest_path(assigns(:picturetest))
  end

  test "should destroy picturetest" do
    assert_difference('Picturetest.count', -1) do
      delete :destroy, id: @picturetest
    end

    assert_redirected_to picturetests_path
  end
end
