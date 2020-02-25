class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to lists_path
    end
  end

  def create
    user = User.find_by(name: params[:name])
     if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to lists_path
     else
      redirect_to '/login'
     end
   end
    
   def destroy
    session[:user_id] = nil
    redirect_to '/login'
   end
end
