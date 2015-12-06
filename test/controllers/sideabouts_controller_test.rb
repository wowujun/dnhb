require 'test_helper'

class SideaboutsControllerTest < ActionController::TestCase
  setup do
    @sideabout = sideabouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sideabouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sideabout" do
    assert_difference('Sideabout.count') do
      post :create, sideabout: { about: @sideabout.about, concept: @sideabout.concept, culture: @sideabout.culture, qualification: @sideabout.qualification, speech: @sideabout.speech }
    end

    assert_redirected_to sideabout_path(assigns(:sideabout))
  end

  test "should show sideabout" do
    get :show, id: @sideabout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sideabout
    assert_response :success
  end

  test "should update sideabout" do
    patch :update, id: @sideabout, sideabout: { about: @sideabout.about, concept: @sideabout.concept, culture: @sideabout.culture, qualification: @sideabout.qualification, speech: @sideabout.speech }
    assert_redirected_to sideabout_path(assigns(:sideabout))
  end

  test "should destroy sideabout" do
    assert_difference('Sideabout.count', -1) do
      delete :destroy, id: @sideabout
    end

    assert_redirected_to sideabouts_path
  end
end
