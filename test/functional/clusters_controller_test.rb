require 'test_helper'

class ClustersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clusters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cluster" do
    assert_difference('Cluster.count') do
      post :create, :cluster => { }
    end

    assert_redirected_to cluster_path(assigns(:cluster))
  end

  test "should show cluster" do
    get :show, :id => clusters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => clusters(:one).to_param
    assert_response :success
  end

  test "should update cluster" do
    put :update, :id => clusters(:one).to_param, :cluster => { }
    assert_redirected_to cluster_path(assigns(:cluster))
  end

  test "should destroy cluster" do
    assert_difference('Cluster.count', -1) do
      delete :destroy, :id => clusters(:one).to_param
    end

    assert_redirected_to clusters_path
  end
end
