require 'test_helper'

class MytestappsControllerTest < ActionController::TestCase
  setup do
    @mytestapp = mytestapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mytestapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mytestapp" do
    assert_difference('Mytestapp.count') do
      post :create, mytestapp: {  }
    end

    assert_redirected_to mytestapp_path(assigns(:mytestapp))
  end

  test "should show mytestapp" do
    get :show, id: @mytestapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mytestapp
    assert_response :success
  end

  test "should update mytestapp" do
    patch :update, id: @mytestapp, mytestapp: {  }
    assert_redirected_to mytestapp_path(assigns(:mytestapp))
  end

  test "should destroy mytestapp" do
    assert_difference('Mytestapp.count', -1) do
      delete :destroy, id: @mytestapp
    end

    assert_redirected_to mytestapps_path
  end
end
