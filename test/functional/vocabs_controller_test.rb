require 'test_helper'

class VocabsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vocabs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vocab" do
    assert_difference('Vocab.count') do
      post :create, :vocab => { }
    end

    assert_redirected_to vocab_path(assigns(:vocab))
  end

  test "should show vocab" do
    get :show, :id => vocabs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => vocabs(:one).to_param
    assert_response :success
  end

  test "should update vocab" do
    put :update, :id => vocabs(:one).to_param, :vocab => { }
    assert_redirected_to vocab_path(assigns(:vocab))
  end

  test "should destroy vocab" do
    assert_difference('Vocab.count', -1) do
      delete :destroy, :id => vocabs(:one).to_param
    end

    assert_redirected_to vocabs_path
  end
end
