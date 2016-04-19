module QuestionsHelper

def question_belongs_to_user?(question)
 question.user_id == current_user.id
end

end
