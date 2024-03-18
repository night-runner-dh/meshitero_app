class UsersController < ApplicationController
  def show
  @user = User.find(params[:id])
  @post_images = @user.post_images.page(params[:page])
  #@post_images = current_user.post_images
  #kaminariをインストールした為、使用可能になったメソッド
  #@post_images = @user.post_images　←原文
  end

  def edit
  @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
