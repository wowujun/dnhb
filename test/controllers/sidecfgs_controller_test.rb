require 'test_helper'

class SidecfgsControllerTest < ActionController::TestCase
  setup do
    @sidecfg = sidecfgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sidecfgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sidecfg" do
    assert_difference('Sidecfg.count') do
      post :create, sidecfg: { address: @sidecfg.address, company: @sidecfg.company, dingyuhao: @sidecfg.dingyuhao, fax: @sidecfg.fax, tel: @sidecfg.tel }
    end

    assert_redirected_to sidecfg_path(assigns(:sidecfg))
  end

  test "should show sidecfg" do
    get :show, id: @sidecfg
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sidecfg
    assert_response :success
  end

  test "should update sidecfg" do
    patch :update, id: @sidecfg, sidecfg: { address: @sidecfg.address, company: @sidecfg.company, dingyuhao: @sidecfg.dingyuhao, fax: @sidecfg.fax, tel: @sidecfg.tel }
    assert_redirected_to sidecfg_path(assigns(:sidecfg))
  end

  test "should destroy sidecfg" do
    assert_difference('Sidecfg.count', -1) do
      delete :destroy, id: @sidecfg
    end

    assert_redirected_to sidecfgs_path
  end
end
