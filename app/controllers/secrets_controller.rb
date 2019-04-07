class SecretsController < ApplicationController
  before_action :login_required
  def welcome
  end

  def show
    @secret = Secret.find(params[:id])
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id
  end
end
