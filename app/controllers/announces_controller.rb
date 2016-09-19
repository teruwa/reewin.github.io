class AnnouncesController < ApplicationController
  before_action :set_announce, only: [:edit, :update, :destroy]
  
  def index
    @announce = Announce.new
    @announces = Announce.all
  end
  
  def edit
  end
  
  def update
    if @announce.update(announce_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @announce.destroy
    redirect_to root_path
  end
  
  def create
    @announce = Announce.new(announce_params)
    @announce.save
    redirect_to root_path , notice: '最新情報の投稿が完了しました'
  end
  
  private
  def announce_params
    params.require(:announce).permit(:title, :body)
  end
  
  def set_announce
    @announce = Announce.find(params[:id])
  end
end
