class SessionsController < ApplicationController
  def new
  end


def create
@user = User.find_by_email(params[:email])
if @user && @user.authenticate
	session[:path] = @user.id
else
	render 'new'
end
end

def destroy
	session[:user_id] = nil
	redirect_to new_session_path
	end
	

end
