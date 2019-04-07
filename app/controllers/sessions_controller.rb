class SessionsController < ApplicationController
  def new

 end

   def create
       binding.pry
       if !params[:name] || params[:name] == ""
        redirect_to '/login'
     else
       current_user = params[:name]
       redirect_to '/secrets_show'
     end
   end

   def destroy
     current_user.delete
     redirect_to '/'
   end
 end
