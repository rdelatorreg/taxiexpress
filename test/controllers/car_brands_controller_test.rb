require 'test_helper'

class CarBrandsControllerTest < ActionController::TestCase
  setup do
    @car_brand = car_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_brand" do
    assert_difference('CarBrand.count') do
      post :create, car_brand: { name: @car_brand.name }
    end

    assert_redirected_to car_brand_path(assigns(:car_brand))
  end

  test "should show car_brand" do
    get :show, id: @car_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_brand
    assert_response :success
  end

  test "should update car_brand" do
    patch :update, id: @car_brand, car_brand: { name: @car_brand.name }
    assert_redirected_to car_brand_path(assigns(:car_brand))
  end

  test "should destroy car_brand" do
    assert_difference('CarBrand.count', -1) do
      delete :destroy, id: @car_brand
    end

    assert_redirected_to car_brands_path
  end
end
