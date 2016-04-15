require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  
setup do
	@question = questions(:one)
end


test "question has title" do
@question.title = nil
assert_not @question.valid?, "saved without title"
end

test "question has body" do
@question.body = nil
assert_not @question.valid?, "saved without body"
end

test "title is greater then 5" do
@question.title = "five"
assert_not @question.valid?, "title saved less then 5"
end


end
