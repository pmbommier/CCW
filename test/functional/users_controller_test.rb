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
      post :create, user: { cooking_power: @user.cooking_power, date: @user.date, dept: @user.dept, email: @user.email, heating_power: @user.heating_power, housing: @user.housing, level: @user.level, name: @user.name, objectives_comment: @user.objectives_comment, password: @user.password, people: @user.people, power_comment: @user.power_comment, private_comment: @user.private_comment, strengths: @user.strengths, surface: @user.surface, w_heating_power: @user.w_heating_power, weaknesses: @user.weaknesses }
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
    put :update, id: @user, user: { cooking_power: @user.cooking_power, date: @user.date, dept: @user.dept, email: @user.email, heating_power: @user.heating_power, housing: @user.housing, level: @user.level, name: @user.name, objectives_comment: @user.objectives_comment, password: @user.password, people: @user.people, power_comment: @user.power_comment, private_comment: @user.private_comment, strengths: @user.strengths, surface: @user.surface, w_heating_power: @user.w_heating_power, weaknesses: @user.weaknesses }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
