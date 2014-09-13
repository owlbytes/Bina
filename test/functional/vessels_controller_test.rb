require 'test_helper'

class VesselsControllerTest < ActionController::TestCase
  setup do
    @vessel = vessels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vessels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vessel" do
    assert_difference('Vessel.count') do
      post :create, vessel: { description: @vessel.description, title: @vessel.title }
    end

    assert_redirected_to vessel_path(assigns(:vessel))
  end

  test "should show vessel" do
    get :show, id: @vessel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vessel
    assert_response :success
  end

  test "should update vessel" do
    put :update, id: @vessel, vessel: { description: @vessel.description, title: @vessel.title }
    assert_redirected_to vessel_path(assigns(:vessel))
  end

  test "should destroy vessel" do
    assert_difference('Vessel.count', -1) do
      delete :destroy, id: @vessel
    end

    assert_redirected_to vessels_path
  end
end
