class SecretsController < ApplicationController
  before_action :login_required

  def welcome

  end

  def show
    if session[:name]
      @secret = Secret.find(params[:id])
      redirect_to '/secrets/show'
    else
      redirect_to '/sessions/login'
    end
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id
  end
end
