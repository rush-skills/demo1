require 'test_helper'

class Form2sControllerTest < ActionController::TestCase
  setup do
    @form2 = form2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form2" do
    assert_difference('Form2.count') do
      post :create, form2: { User: @form2.User, q1: @form2.q1, q2: @form2.q2, q3: @form2.q3, q4: @form2.q4 }
    end

    assert_redirected_to form2_path(assigns(:form2))
  end

  test "should show form2" do
    get :show, id: @form2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form2
    assert_response :success
  end

  test "should update form2" do
    put :update, id: @form2, form2: { User: @form2.User, q1: @form2.q1, q2: @form2.q2, q3: @form2.q3, q4: @form2.q4 }
    assert_redirected_to form2_path(assigns(:form2))
  end

  test "should destroy form2" do
    assert_difference('Form2.count', -1) do
      delete :destroy, id: @form2
    end

    assert_redirected_to form2s_path
  end
end
