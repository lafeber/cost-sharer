require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transactions" do
    assert_difference('Transactions.count') do
      post :create, :transactions => { }
    end

    assert_redirected_to transactions_path(assigns(:transactions))
  end

  test "should show transactions" do
    get :show, :id => transactions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => transactions(:one).to_param
    assert_response :success
  end

  test "should update transactions" do
    put :update, :id => transactions(:one).to_param, :transactions => { }
    assert_redirected_to transactions_path(assigns(:transactions))
  end

  test "should destroy transactions" do
    assert_difference('Transactions.count', -1) do
      delete :destroy, :id => transactions(:one).to_param
    end

    assert_redirected_to transactions_path
  end
end
