class UsersController < ApplicationController
  before_action :set_essay, only: [:show, :edit, :update, :destroy]
  before_action :active_session, only: [:new, :create, :edit, :update]

  def active_session
      unless session?
        flash[:danger] = "Error: You are not logged in!"
        redirect_to login_url
      end
    end
end
