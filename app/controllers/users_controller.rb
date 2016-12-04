class UsersController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  
  def show # 追加
   @user = User.find(params[:id])
  end
  
  def new
      @user = User.new
  end
 
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to Net Price Compare!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end  
  
  def update
    if @user.update(user_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to user_path(@user) , notice: 'メッセージを編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
  
  def set_message
    @user = User.find(params[:id])
  end
  
  def correct_user
    redirect_to root_path if @user != current_user
  end
end
