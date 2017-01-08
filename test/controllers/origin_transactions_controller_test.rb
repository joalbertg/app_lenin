require 'test_helper'

class OriginTransactionsControllerTest < ActionController::TestCase
  setup do
    @origin_transaction = origin_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origin_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origin_transaction" do
    assert_difference('OriginTransaction.count') do
      post :create, origin_transaction: { block_height: @origin_transaction.block_height, block_index: @origin_transaction.block_index, confirmations: @origin_transaction.confirmations, double_spend: @origin_transaction.double_spend, fees: @origin_transaction.fees, lock_time: @origin_transaction.lock_time, origin_hash: @origin_transaction.origin_hash, preference: @origin_transaction.preference, received: @origin_transaction.received, relayed_by: @origin_transaction.relayed_by, size: @origin_transaction.size, total: @origin_transaction.total, ver: @origin_transaction.ver, vin_sz: @origin_transaction.vin_sz, vout_sz: @origin_transaction.vout_sz }
    end

    assert_redirected_to origin_transaction_path(assigns(:origin_transaction))
  end

  test "should show origin_transaction" do
    get :show, id: @origin_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origin_transaction
    assert_response :success
  end

  test "should update origin_transaction" do
    patch :update, id: @origin_transaction, origin_transaction: { block_height: @origin_transaction.block_height, block_index: @origin_transaction.block_index, confirmations: @origin_transaction.confirmations, double_spend: @origin_transaction.double_spend, fees: @origin_transaction.fees, lock_time: @origin_transaction.lock_time, origin_hash: @origin_transaction.origin_hash, preference: @origin_transaction.preference, received: @origin_transaction.received, relayed_by: @origin_transaction.relayed_by, size: @origin_transaction.size, total: @origin_transaction.total, ver: @origin_transaction.ver, vin_sz: @origin_transaction.vin_sz, vout_sz: @origin_transaction.vout_sz }
    assert_redirected_to origin_transaction_path(assigns(:origin_transaction))
  end

  test "should destroy origin_transaction" do
    assert_difference('OriginTransaction.count', -1) do
      delete :destroy, id: @origin_transaction
    end

    assert_redirected_to origin_transactions_path
  end
end
