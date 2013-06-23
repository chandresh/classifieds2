class SessionController < ApplicationController
  #login form
  def new

  end

  #login form submission
  def create
    session_user = params[:session]

    #find the user from db by email
    user = User.find_by_email(session_user[:email])

    if user and user.authenticate(session_user[:password])
      session[:user_id] = user.id
      redirect_to adverts_url
    else
      redirect_to root_url
    end


  end

  # logout
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
