require 'test_helper'

class Picture1sControllerTest < ActionController::TestCase
  setup do
    @picture1 = picture1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:picture1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create picture1" do
    assert_difference('Picture1.count') do
      post :create, :picture1 => @picture1.attributes
    end

    assert_redirected_to picture1_path(assigns(:picture1))
  end

  test "should show picture1" do
    get :show, :id => @picture1.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @picture1.to_param
    assert_response :success
  end

  test "should update picture1" do
    put :update, :id => @picture1.to_param, :picture1 => @picture1.attributes
    assert_redirected_to picture1_path(assigns(:picture1))
  end

  test "should destroy picture1" do
    assert_difference('Picture1.count', -1) do
      delete :destroy, :id => @picture1.to_param
    end

    assert_redirected_to picture1s_path
  end
end
