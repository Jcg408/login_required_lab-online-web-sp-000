class SecretsController < ApplicationController
  before_action :login_required

  def show
    if session[:name]
      redirect_to '/secrets/show'
    else
      redirect_to '/'
    end
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id
  end
end
