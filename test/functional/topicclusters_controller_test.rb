require 'test_helper'

class TopicclustersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topicclusters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topiccluster" do
    assert_difference('Topiccluster.count') do
      post :create, :topiccluster => { }
    end

    assert_redirected_to topiccluster_path(assigns(:topiccluster))
  end

  test "should show topiccluster" do
    get :show, :id => topicclusters(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => topicclusters(:one).to_param
    assert_response :success
  end

  test "should update topiccluster" do
    put :update, :id => topicclusters(:one).to_param, :topiccluster => { }
    assert_redirected_to topiccluster_path(assigns(:topiccluster))
  end

  test "should destroy topiccluster" do
    assert_difference('Topiccluster.count', -1) do
      delete :destroy, :id => topicclusters(:one).to_param
    end

    assert_redirected_to topicclusters_path
  end
end
