require 'test_helper'

class UserTest < ActiveSupport::TestCase


test "saving user without name" do
	invalid_user = User.new(email: "foobar@gmail.com", password: "password")
	assert_not invalid_user.save, "saved user without name"
end

test "saving user without email" do
	invalid_user = User.new(name: "foo", password: "password")
	assert_not invalid_user.save, "saved user without email"
end

end
