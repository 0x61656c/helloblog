class ApplicationController < ActionController::Base
  include SessionsHelper
  private
  def active_session
      unless session?
        flash[:danger] = "Error: You are not logged in!"
        redirect_to login_url
      end
    end

end
