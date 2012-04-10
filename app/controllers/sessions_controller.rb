class SessionsController < ApplicationController

  def new
    #New Session 
    @title = "Sign in"
  end

  def create
    #Create Session - sign in
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
                             
    #remember = params[:remember]
                             
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "Sign in"
      render 'new'
    else
      # Sign the user in and redirect to the user's show page.
      # Remember Me is checked - permanent sign in else log out when browseris closed
                           
                              
      #if(remember == "True")
      sign_in user
      #else
        #sign_in_temp user
      #end
      redirect_to user
    end
  end

  def destroy
    #Sign out
    sign_out
    redirect_to root_path
  end
end
