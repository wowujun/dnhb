require 'test_helper'

class SideshixtsControllerTest < ActionController::TestCase
  setup do
    @sideshixt = sideshixts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sideshixts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sideshixt" do
    assert_difference('Sideshixt.count') do
      post :create, sideshixt: { content: @sideshixt.content, date: @sideshixt.date, title: @sideshixt.title }
    end

    assert_redirected_to sideshixt_path(assigns(:sideshixt))
  end

  test "should show sideshixt" do
    get :show, id: @sideshixt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sideshixt
    assert_response :success
  end

  test "should update sideshixt" do
    patch :update, id: @sideshixt, sideshixt: { content: @sideshixt.content, date: @sideshixt.date, title: @sideshixt.title }
    assert_redirected_to sideshixt_path(assigns(:sideshixt))
  end

  test "should destroy sideshixt" do
    assert_difference('Sideshixt.count', -1) do
      delete :destroy, id: @sideshixt
    end

    assert_redirected_to sideshixts_path
  end
end
