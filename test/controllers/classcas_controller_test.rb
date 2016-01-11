require 'test_helper'

class ClasscasControllerTest < ActionController::TestCase
  setup do
    @classca = classcas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classcas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classca" do
    assert_difference('Classca.count') do
      post :create, classca: { content: @classca.content, image: @classca.image, time: @classca.time, title: @classca.title }
    end

    assert_redirected_to classca_path(assigns(:classca))
  end

  test "should show classca" do
    get :show, id: @classca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classca
    assert_response :success
  end

  test "should update classca" do
    patch :update, id: @classca, classca: { content: @classca.content, image: @classca.image, time: @classca.time, title: @classca.title }
    assert_redirected_to classca_path(assigns(:classca))
  end

  test "should destroy classca" do
    assert_difference('Classca.count', -1) do
      delete :destroy, id: @classca
    end

    assert_redirected_to classcas_path
  end
end
