require 'test_helper'

class SidecontentsControllerTest < ActionController::TestCase
  setup do
    @sidecontent = sidecontents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sidecontents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sidecontent" do
    assert_difference('Sidecontent.count') do
      post :create, sidecontent: { content: @sidecontent.content, date: @sidecontent.date, title: @sidecontent.title }
    end

    assert_redirected_to sidecontent_path(assigns(:sidecontent))
  end

  test "should show sidecontent" do
    get :show, id: @sidecontent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sidecontent
    assert_response :success
  end

  test "should update sidecontent" do
    patch :update, id: @sidecontent, sidecontent: { content: @sidecontent.content, date: @sidecontent.date, title: @sidecontent.title }
    assert_redirected_to sidecontent_path(assigns(:sidecontent))
  end

  test "should destroy sidecontent" do
    assert_difference('Sidecontent.count', -1) do
      delete :destroy, id: @sidecontent
    end

    assert_redirected_to sidecontents_path
  end
end
