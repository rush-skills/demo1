require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { User: @profile.User, accommodation_fee: @profile.accommodation_fee, accommodation_name: @profile.accommodation_name, client_name: @profile.client_name, country: @profile.country, expectations: @profile.expectations, fb_link: @profile.fb_link, flight_details: @profile.flight_details, profile_pic: @profile.profile_pic, tn_id: @profile.tn_id, tn_manager: @profile.tn_manager }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    put :update, id: @profile, profile: { User: @profile.User, accommodation_fee: @profile.accommodation_fee, accommodation_name: @profile.accommodation_name, client_name: @profile.client_name, country: @profile.country, expectations: @profile.expectations, fb_link: @profile.fb_link, flight_details: @profile.flight_details, profile_pic: @profile.profile_pic, tn_id: @profile.tn_id, tn_manager: @profile.tn_manager }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
