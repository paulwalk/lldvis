require 'test_helper'

class UsecasesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usecases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usecase" do
    assert_difference('Usecase.count') do
      post :create, :usecase => { }
    end

    assert_redirected_to usecase_path(assigns(:usecase))
  end

  test "should show usecase" do
    get :show, :id => usecases(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => usecases(:one).to_param
    assert_response :success
  end

  test "should update usecase" do
    put :update, :id => usecases(:one).to_param, :usecase => { }
    assert_redirected_to usecase_path(assigns(:usecase))
  end

  test "should destroy usecase" do
    assert_difference('Usecase.count', -1) do
      delete :destroy, :id => usecases(:one).to_param
    end

    assert_redirected_to usecases_path
  end
end
