require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

setup do
@user = User.create(name: "foo", email: "foobar@gmail.com", password: "password")
end

  test "should get new" do
    get :new
    assert_response :success
  end

test "login with valid information" do
end

test "destroy session" do
delete :destroy, id: @user.id
assert_nil session[:user_id]
assert_redirected_to new_session_path
end





end
