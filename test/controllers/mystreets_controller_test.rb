require 'test_helper'

class MystreetsControllerTest < ActionController::TestCase
  setup do
    @mystreet = mystreets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mystreets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mystreet" do
    assert_difference('Mystreet.count') do
      post :create, mystreet: { district_id: @mystreet.district_id, street: @mystreet.street }
    end

    assert_redirected_to mystreet_path(assigns(:mystreet))
  end

  test "should show mystreet" do
    get :show, id: @mystreet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mystreet
    assert_response :success
  end

  test "should update mystreet" do
    patch :update, id: @mystreet, mystreet: { district_id: @mystreet.district_id, street: @mystreet.street }
    assert_redirected_to mystreet_path(assigns(:mystreet))
  end

  test "should destroy mystreet" do
    assert_difference('Mystreet.count', -1) do
      delete :destroy, id: @mystreet
    end

    assert_redirected_to mystreets_path
  end
end
