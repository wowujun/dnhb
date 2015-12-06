require 'test_helper'

class SideproductsControllerTest < ActionController::TestCase
  setup do
    @sideproduct = sideproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sideproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sideproduct" do
    assert_difference('Sideproduct.count') do
      post :create, sideproduct: { content: @sideproduct.content, image: @sideproduct.image, title: @sideproduct.title }
    end

    assert_redirected_to sideproduct_path(assigns(:sideproduct))
  end

  test "should show sideproduct" do
    get :show, id: @sideproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sideproduct
    assert_response :success
  end

  test "should update sideproduct" do
    patch :update, id: @sideproduct, sideproduct: { content: @sideproduct.content, image: @sideproduct.image, title: @sideproduct.title }
    assert_redirected_to sideproduct_path(assigns(:sideproduct))
  end

  test "should destroy sideproduct" do
    assert_difference('Sideproduct.count', -1) do
      delete :destroy, id: @sideproduct
    end

    assert_redirected_to sideproducts_path
  end
end
