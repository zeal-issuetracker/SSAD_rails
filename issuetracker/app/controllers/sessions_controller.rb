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

  def show ##destroy for sign out
  	sign_out
  	redirect_to :controller => 'welcome' , :action => 'index'
  end
end
