require 'test_helper'

class ExpositorsControllerTest < ActionController::TestCase
  setup do
    @expositor = expositors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expositors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expositor" do
    assert_difference('Expositor.count') do
      post :create, expositor: { nombre: @expositor.nombre, publicacion_id: @expositor.publicacion_id }
    end

    assert_redirected_to expositor_path(assigns(:expositor))
  end

  test "should show expositor" do
    get :show, id: @expositor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expositor
    assert_response :success
  end

  test "should update expositor" do
    patch :update, id: @expositor, expositor: { nombre: @expositor.nombre, publicacion_id: @expositor.publicacion_id }
    assert_redirected_to expositor_path(assigns(:expositor))
  end

  test "should destroy expositor" do
    assert_difference('Expositor.count', -1) do
      delete :destroy, id: @expositor
    end

    assert_redirected_to expositors_path
  end
end
