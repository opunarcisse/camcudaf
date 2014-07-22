require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { confirm_password: @user.confirm_password, email_address: @user.email_address, first_name: @user.first_name, gender: @user.gender, hashed_password: @user.hashed_password, last_name: @user.last_name, password: @user.password, registered_on: @user.registered_on, salt: @user.salt, status_update: @user.status_update }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { confirm_password: @user.confirm_password, email_address: @user.email_address, first_name: @user.first_name, gender: @user.gender, hashed_password: @user.hashed_password, last_name: @user.last_name, password: @user.password, registered_on: @user.registered_on, salt: @user.salt, status_update: @user.status_update }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
