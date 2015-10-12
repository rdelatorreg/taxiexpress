require 'test_helper'

class MicuentaControllerTest < ActionController::TestCase
  test "should get principal" do
    get :principal
    assert_response :success
  end

  test "should get mis_reservas" do
    get :mis_reservas
    assert_response :success
  end

  test "should get mis_direcciones" do
    get :mis_direcciones
    assert_response :success
  end

end
