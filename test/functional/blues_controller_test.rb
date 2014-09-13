require 'test_helper'

class BluesControllerTest < ActionController::TestCase
  setup do
    @blue = blues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blue" do
    assert_difference('Blue.count') do
      post :create, blue: { description: @blue.description, title: @blue.title }
    end

    assert_redirected_to blue_path(assigns(:blue))
  end

  test "should show blue" do
    get :show, id: @blue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blue
    assert_response :success
  end

  test "should update blue" do
    put :update, id: @blue, blue: { description: @blue.description, title: @blue.title }
    assert_redirected_to blue_path(assigns(:blue))
  end

  test "should destroy blue" do
    assert_difference('Blue.count', -1) do
      delete :destroy, id: @blue
    end

    assert_redirected_to blues_path
  end
end
