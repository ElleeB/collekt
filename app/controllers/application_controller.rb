class ApplicationController < ActionController::Base

   protect_from_forgery unless: -> { @auth }

   def auth
     @auth = request.env['omniauth.auth']
   end

   def logged_in?
     !!current_user
   end

   def email_login
     if @user = User.find_by(email: params[:user][:email])
       if !@user.password_digest.nil?
         if @user.try(:authenticate, params[:user][:password])
           session[:user_id] = @user.id

           redirect_to user_path(@user)
         else
           redirect_to '/login', notice: "You must enter a vaild email and password"
         end
       else
         redirect_to '/login', notice: "Please login via facebook, or create a new account"
       end
     end
   end

   def existing_user_facebook_login
     session[:user_id] = @user.id
     redirect_to user_path(@user)
   end

   def new_user_facebook_login
     @user = User.create(
       uid: auth['uid'],
       name: auth['info']['name'],
       username: auth['info']['name'],
       email: auth['info']['email'],
       image: auth['info']['image']
     )
     @user.save(validate: false)

     session[:user_id] = @user.id
     redirect_to user_path(@user)
   end

   def current_user
     @current_user ||= User.find(session[:user_id])
   end

   def current_user?
     if current_user
       current_user.id == session[:user_id]
     else
       redirect_to '/login'
     end
   end
end
