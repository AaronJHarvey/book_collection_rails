class SessionsController < ApplicationController
  def create
    session[:id] = @user.id
  end
end
