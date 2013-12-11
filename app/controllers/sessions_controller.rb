class SessionsController < ApplicationController
def new
         render :layout => "application_simple"
end

def create

  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to products_path
  else 
    flash.now.alert = "El correo electrónico o la contraseña no son válidos."
    render "new", :layout => "application_simple", notice: 'El correo electrónico o la contraseña no son válidos.'
  end
end

def destroy
  session[:user_id] = nil
  redirect_to log_in_path
end
end
