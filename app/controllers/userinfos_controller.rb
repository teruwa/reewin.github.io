class UserinfosController < ApplicationController
  before_action :set_userinfo, only: [:update]
  
  def index
   #unless current_user.admin?
#    redirect_to :root and return
#   end
   @userinfos = User.all
  end

  def update
   if @userinfos.update(userinfo_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to :back
    else
      # 保存に失敗した場合は編集画面へ戻す
      render '/userinfos/index'
   end
  end
  
  private
  def userinfo_params
    params.require(:user).permit(:shopowner)
  end
  
  def set_userinfo
    @userinfos = User.find(params[:id])
  end
end
