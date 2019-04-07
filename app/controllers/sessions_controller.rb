class SessionsController < ApplicationController
  def new

 end

   def create
     if !params[:name] || params[:name] == ""
        redirect_to '/'
     else
       session[:name] = params[:name]
       redirect_to '/secrets_show'
     end
   end

   def destroy
     session.delete :name
     redirect_to '/'
   end
 end
