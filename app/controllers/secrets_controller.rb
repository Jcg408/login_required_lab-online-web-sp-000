class SecretsController < ApplicationController

  before_action :login_required
  skip_before_action :login_required, only: [:show]

  def show
    if current_user
      render 'show'
    else
      redirect_to '/'
    end
  end

  def login_required
    return head(:forbidden) unless session.include? :user_id

  end
end
