# FILE: app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def destroy
    sign_out(current_user) # This is for Devise
    redirect_to root_path, notice: "You have successfully logged out."
  end
end