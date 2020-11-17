class UsersController < ApplicationController

  #投稿したデータをデータベースから取り出すアクション
  def index
    @users = User.all
  end

  #新規画面に対応するアクション
  def new
    @user = User.new
  end

  #新規登録するためのアクション
  def create
    User.create(user_params)#入力に制限をつけるメソッド
    redirect_to action: :index
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to action: :index
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to action: :index
  end

  private
  def user_params#上記のメソッドを定義する
    params.require(:user).permit(:name, :age)
  end
end
