require 'test_helper'

class OriginInputsControllerTest < ActionController::TestCase
  setup do
    @origin_input = origin_inputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origin_inputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origin_input" do
    assert_difference('OriginInput.count') do
      post :create, origin_input: { addresses: @origin_input.addresses, output_index: @origin_input.output_index, output_value: @origin_input.output_value, prev_hash: @origin_input.prev_hash, script: @origin_input.script, script_type: @origin_input.script_type, sequence: @origin_input.sequence }
    end

    assert_redirected_to origin_input_path(assigns(:origin_input))
  end

  test "should show origin_input" do
    get :show, id: @origin_input
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origin_input
    assert_response :success
  end

  test "should update origin_input" do
    patch :update, id: @origin_input, origin_input: { addresses: @origin_input.addresses, output_index: @origin_input.output_index, output_value: @origin_input.output_value, prev_hash: @origin_input.prev_hash, script: @origin_input.script, script_type: @origin_input.script_type, sequence: @origin_input.sequence }
    assert_redirected_to origin_input_path(assigns(:origin_input))
  end

  test "should destroy origin_input" do
    assert_difference('OriginInput.count', -1) do
      delete :destroy, id: @origin_input
    end

    assert_redirected_to origin_inputs_path
  end
end
