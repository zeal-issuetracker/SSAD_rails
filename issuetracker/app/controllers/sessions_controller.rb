class SessionsController < ApplicationController
  def new
  end

  def create
    #puts params[:session][:email]
    #puts params[:session][:password]
  	user = User.authenticate(params[:session][:email],params[:session][:password])
    #print user
  	if user.nil?
  		flash.now[:error]="Invalid email/password combination."
  		render :new
  	else
  		sign_in user
      redirect_to :controller => 'welcome' , :action => 'index'
  	end

  end

  def destroy
  	sign_out
  	redirect_to sign_in_path

  end
end
