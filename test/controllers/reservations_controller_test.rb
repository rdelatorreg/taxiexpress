require 'test_helper'

class ReservationsControllerTest < ActionController::TestCase
  setup do
    @reservation = reservations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservation" do
    assert_difference('Reservation.count') do
      post :create, reservation: { client_id: @reservation.client_id, destination_id: @reservation.destination_id, destination_street: @reservation.destination_street, origin_id: @reservation.origin_id, origin_street: @reservation.origin_street, pickuptime: @reservation.pickuptime, price: @reservation.price, qualification: @reservation.qualification }
    end

    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should show reservation" do
    get :show, id: @reservation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservation
    assert_response :success
  end

  test "should update reservation" do
    patch :update, id: @reservation, reservation: { client_id: @reservation.client_id, destination_id: @reservation.destination_id, destination_street: @reservation.destination_street, origin_id: @reservation.origin_id, origin_street: @reservation.origin_street, pickuptime: @reservation.pickuptime, price: @reservation.price, qualification: @reservation.qualification }
    assert_redirected_to reservation_path(assigns(:reservation))
  end

  test "should destroy reservation" do
    assert_difference('Reservation.count', -1) do
      delete :destroy, id: @reservation
    end

    assert_redirected_to reservations_path
  end
end
