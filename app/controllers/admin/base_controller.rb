class Admin::BaseController < ApplicationController
  before_action :authorize_admin!

  def index
  end

  private

  def authorize_admin!
    authenticate_user!

    unless current_user.admin?
      flash[:alert] = "You must sign in as admin."
      redirect_to "/"
    end
  end
end
