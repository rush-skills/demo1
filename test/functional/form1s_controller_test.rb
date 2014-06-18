require 'test_helper'

class Form1sControllerTest < ActionController::TestCase
  setup do
    @form1 = form1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form1" do
    assert_difference('Form1.count') do
      post :create, form1: { User: @form1.User, q1: @form1.q1, q2: @form1.q2, q3: @form1.q3 }
    end

    assert_redirected_to form1_path(assigns(:form1))
  end

  test "should show form1" do
    get :show, id: @form1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form1
    assert_response :success
  end

  test "should update form1" do
    put :update, id: @form1, form1: { User: @form1.User, q1: @form1.q1, q2: @form1.q2, q3: @form1.q3 }
    assert_redirected_to form1_path(assigns(:form1))
  end

  test "should destroy form1" do
    assert_difference('Form1.count', -1) do
      delete :destroy, id: @form1
    end

    assert_redirected_to form1s_path
  end
end
