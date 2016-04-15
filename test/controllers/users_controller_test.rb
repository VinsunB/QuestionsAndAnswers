require 'test_helper'

class UsersControllerTest < ActionController::TestCase
 
 setup do

 end

  test "should get new" do
    get :new
    assert_response :success
  end
  
test "should create user" do
assert_difference("User.count") do
post :create, user: {name: 'john', email: "bigjohn@gmail.com", password: "password"}
end
assert_not_nil session[:user_id], "created user session did not save"
assert_response(:redirect, "did not redirect")
end

end
