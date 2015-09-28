require 'test_helper'

class DocumenttypesControllerTest < ActionController::TestCase
  setup do
    @documenttype = documenttypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documenttypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documenttype" do
    assert_difference('Documenttype.count') do
      post :create, documenttype: { name: @documenttype.name }
    end

    assert_redirected_to documenttype_path(assigns(:documenttype))
  end

  test "should show documenttype" do
    get :show, id: @documenttype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documenttype
    assert_response :success
  end

  test "should update documenttype" do
    patch :update, id: @documenttype, documenttype: { name: @documenttype.name }
    assert_redirected_to documenttype_path(assigns(:documenttype))
  end

  test "should destroy documenttype" do
    assert_difference('Documenttype.count', -1) do
      delete :destroy, id: @documenttype
    end

    assert_redirected_to documenttypes_path
  end
end
