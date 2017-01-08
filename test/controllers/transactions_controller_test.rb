require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { block_height: @transaction.block_height, block_index: @transaction.block_index, confirmations: @transaction.confirmations, double_spend: @transaction.double_spend, fees: @transaction.fees, hash: @transaction.hash, lock_time: @transaction.lock_time, preference: @transaction.preference, received: @transaction.received, relayed_by: @transaction.relayed_by, size: @transaction.size, total: @transaction.total, ver: @transaction.ver, vin_sz: @transaction.vin_sz, vout_sz: @transaction.vout_sz }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { block_height: @transaction.block_height, block_index: @transaction.block_index, confirmations: @transaction.confirmations, double_spend: @transaction.double_spend, fees: @transaction.fees, hash: @transaction.hash, lock_time: @transaction.lock_time, preference: @transaction.preference, received: @transaction.received, relayed_by: @transaction.relayed_by, size: @transaction.size, total: @transaction.total, ver: @transaction.ver, vin_sz: @transaction.vin_sz, vout_sz: @transaction.vout_sz }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
