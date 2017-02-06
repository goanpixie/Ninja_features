class UsersController < ApplicationController
  def index
  	@user =User.all
  end

  def create
  @user = User.new(params.require(:user).permit(:name, :description))
  if @user.save
    flash[:notice] = 'User successfully created'
    redirect_to action: 'index'
  else
    #errors we need to code later
  end
end
end
