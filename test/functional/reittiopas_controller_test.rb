require 'test_helper'

class ReittiopasControllerTest < ActionController::TestCase
  setup do
    @reittiopa = reittiopas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reittiopas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reittiopa" do
    assert_difference('Reittiopa.count') do
      post :create, reittiopa: { query: @reittiopa.query, result: @reittiopa.result }
    end

    assert_redirected_to reittiopa_path(assigns(:reittiopa))
  end

  test "should show reittiopa" do
    get :show, id: @reittiopa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reittiopa
    assert_response :success
  end

  test "should update reittiopa" do
    put :update, id: @reittiopa, reittiopa: { query: @reittiopa.query, result: @reittiopa.result }
    assert_redirected_to reittiopa_path(assigns(:reittiopa))
  end

  test "should destroy reittiopa" do
    assert_difference('Reittiopa.count', -1) do
      delete :destroy, id: @reittiopa
    end

    assert_redirected_to reittiopas_path
  end
end
