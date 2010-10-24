require 'test_helper'

class UsecaseclustersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usecaseclusters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usecasecluster" do
    assert_difference('Usecasecluster.count') do
      post :create, :usecasecluster => { }
    end

    assert_redirected_to usecasecluster_path(assigns(:usecasecluster))
  end

  test "should show usecasecluster" do
    get :show, :id => usecaseclusters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => usecaseclusters(:one).to_param
    assert_response :success
  end

  test "should update usecasecluster" do
    put :update, :id => usecaseclusters(:one).to_param, :usecasecluster => { }
    assert_redirected_to usecasecluster_path(assigns(:usecasecluster))
  end

  test "should destroy usecasecluster" do
    assert_difference('Usecasecluster.count', -1) do
      delete :destroy, :id => usecaseclusters(:one).to_param
    end

    assert_redirected_to usecaseclusters_path
  end
end
