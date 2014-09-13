require 'test_helper'

class TorsosControllerTest < ActionController::TestCase
  setup do
    @torso = torsos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:torsos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create torso" do
    assert_difference('Torso.count') do
      post :create, torso: { description: @torso.description, title: @torso.title }
    end

    assert_redirected_to torso_path(assigns(:torso))
  end

  test "should show torso" do
    get :show, id: @torso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @torso
    assert_response :success
  end

  test "should update torso" do
    put :update, id: @torso, torso: { description: @torso.description, title: @torso.title }
    assert_redirected_to torso_path(assigns(:torso))
  end

  test "should destroy torso" do
    assert_difference('Torso.count', -1) do
      delete :destroy, id: @torso
    end

    assert_redirected_to torsos_path
  end
end
