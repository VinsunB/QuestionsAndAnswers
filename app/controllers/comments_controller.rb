class CommentsController < ApplicationController
before_filter :user_logged_in


def create
@question = Question.find(params[:question_id])

@comment = @question.comments.create(comment_params)
@comment.user = current_user
if @comment.save
	redirect_to :back
else
	redirect_to :back
end
end

private

def user_logged_in
unless current_user
	redirect_to new_session_path
end
end

def comment_params 
params.require(:comment).permit(:body)
end

end
