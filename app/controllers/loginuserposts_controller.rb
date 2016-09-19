class LoginuserpostsController < ApplicationController
    before_action :logged_in_user, only: [:create]

  def create
    @loginuserpost = current_user.loginuserposts.build(loginuserpost_params)
    if @loginuserposts.save
      flash[:success] = "情報が反映されました。"
      redirect_to root_url
    else
      render 'home/index'
    end
  end
  
# 名前はhomeだが、ログインしている場合に新しいloginuserpostクラスのインスタンスをuser_idを紐付けた状態で初期化させてる。  
  def home
    @loginuserpost = current_user.loginuserposts.build if logged_in?
  end
  
  private
  def loginuserpost_params
    params.require(:loginuserpost).permit(:content)
  end
end

