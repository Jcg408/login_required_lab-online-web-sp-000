class SecretsController < ApplicationController

  before_action :login_required

  def show

    if current_user
      redirect_to '/show'
    else
      redirect_to '/sessions'
    end
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id

  end
end
