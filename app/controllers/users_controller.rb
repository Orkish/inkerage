class UsersController < ApplicationController
  require 'tumblr_client'

  def index

  end

  def profile
    @design = current_user.designs
  end

  def delete
    Design.find(params[:id]).delete 
    redirect_to '/users/profile'
  end

  # def new
  #   @user = User.new
  # end


end
