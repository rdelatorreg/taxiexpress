require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

  test "should get reservas" do
    get :reservas
    assert_response :success
  end

end
