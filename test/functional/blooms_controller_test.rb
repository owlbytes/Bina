require 'test_helper'

class BloomsControllerTest < ActionController::TestCase
  setup do
    @bloom = blooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bloom" do
    assert_difference('Bloom.count') do
      post :create, bloom: { description: @bloom.description, title: @bloom.title }
    end

    assert_redirected_to bloom_path(assigns(:bloom))
  end

  test "should show bloom" do
    get :show, id: @bloom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bloom
    assert_response :success
  end

  test "should update bloom" do
    put :update, id: @bloom, bloom: { description: @bloom.description, title: @bloom.title }
    assert_redirected_to bloom_path(assigns(:bloom))
  end

  test "should destroy bloom" do
    assert_difference('Bloom.count', -1) do
      delete :destroy, id: @bloom
    end

    assert_redirected_to blooms_path
  end
end
