class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      # Put on the wristband
      session[:user_id] = u.id

      # flash[:notice] = 'Successfully logged in'
      redirect_to root_url
    else
      # flash[:error] = 'Email or password invalid'
      render :new
    end

  end

  def destroy
    # Cut the wristband
    session[:user_id] = nil

    # Optional: flash
    redirect_to root_url
  end
end

# 3 Magic Hashes
# params
# flash
# session
