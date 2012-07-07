class UsersController < ApplicationController
  def new
  end
  
  def show
    # raise params.inspect
    @user = User.find(params[:id])
  end
end
