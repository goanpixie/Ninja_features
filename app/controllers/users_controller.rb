class UsersController < ApplicationController
  def index
  	@user =User.new
  	@users=User.all

  end

  def create
  @problem = Problem.new
  @user = User.new(params.require(:user).permit(:name, :description))
  if @user.save
    flash[:notice] = 'User successfully created'
    redirect_to action: 'index'
  else
    #errors we need to code later
  end
end
end
