require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
 
 setup do
@question = questions(:one)
 end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
get :edit, id: @question
assert_response :success
  end

test "update question" do
patch :update, id: @question, question: { title: @question.title, body: @question.body }
    assert_redirected_to @question
  end

test "create question" do
assert_difference("Question.count") do
post :create, question: { title: @question.title, body: @question.body }
end
assert_response(:redirect)
end

end
