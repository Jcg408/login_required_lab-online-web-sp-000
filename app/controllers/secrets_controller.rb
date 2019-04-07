class SecretsController < ApplicationController
  before_action :login_required
  def welcome
  end

  def show
    @secret = Secret.find(params[:id])
  end
end
