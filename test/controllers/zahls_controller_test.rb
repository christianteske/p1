require 'test_helper'

class ZahlsControllerTest < ActionController::TestCase
  setup do
    @zahl = zahls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zahls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zahl" do
    assert_difference('Zahl.count') do
      post :create, zahl: { zahl: @zahl.zahl }
    end

    assert_redirected_to zahl_path(assigns(:zahl))
  end

  test "should show zahl" do
    get :show, id: @zahl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zahl
    assert_response :success
  end

  test "should update zahl" do
    patch :update, id: @zahl, zahl: { zahl: @zahl.zahl }
    assert_redirected_to zahl_path(assigns(:zahl))
  end

  test "should destroy zahl" do
    assert_difference('Zahl.count', -1) do
      delete :destroy, id: @zahl
    end

    assert_redirected_to zahls_path
  end
end
