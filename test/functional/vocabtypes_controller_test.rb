require 'test_helper'

class VocabtypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vocabtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vocabtype" do
    assert_difference('Vocabtype.count') do
      post :create, :vocabtype => { }
    end

    assert_redirected_to vocabtype_path(assigns(:vocabtype))
  end

  test "should show vocabtype" do
    get :show, :id => vocabtypes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vocabtypes(:one).to_param
    assert_response :success
  end

  test "should update vocabtype" do
    put :update, :id => vocabtypes(:one).to_param, :vocabtype => { }
    assert_redirected_to vocabtype_path(assigns(:vocabtype))
  end

  test "should destroy vocabtype" do
    assert_difference('Vocabtype.count', -1) do
      delete :destroy, :id => vocabtypes(:one).to_param
    end

    assert_redirected_to vocabtypes_path
  end
end
