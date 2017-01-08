require 'test_helper'

class OriginOutputsControllerTest < ActionController::TestCase
  setup do
    @origin_output = origin_outputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:origin_outputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create origin_output" do
    assert_difference('OriginOutput.count') do
      post :create, origin_output: { addresses: @origin_output.addresses, script: @origin_output.script, script_type: @origin_output.script_type, value: @origin_output.value }
    end

    assert_redirected_to origin_output_path(assigns(:origin_output))
  end

  test "should show origin_output" do
    get :show, id: @origin_output
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @origin_output
    assert_response :success
  end

  test "should update origin_output" do
    patch :update, id: @origin_output, origin_output: { addresses: @origin_output.addresses, script: @origin_output.script, script_type: @origin_output.script_type, value: @origin_output.value }
    assert_redirected_to origin_output_path(assigns(:origin_output))
  end

  test "should destroy origin_output" do
    assert_difference('OriginOutput.count', -1) do
      delete :destroy, id: @origin_output
    end

    assert_redirected_to origin_outputs_path
  end
end
