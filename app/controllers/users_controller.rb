class UsersController < ApplicationController
  before_filter :logged_in

  def index
    @users = User.order(:last_name)
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    @users = User.order(:last_name)
  end
end
