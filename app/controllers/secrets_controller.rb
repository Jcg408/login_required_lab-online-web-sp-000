class SecretsController < ApplicationController

  before_action :login_required
binding.pry
  def show

    if current_user
      redirect_to '/secrets'
    else
      redirect_to '/'
    end
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id
  end
end
