class NewssController < ApplicationController
   before_action :set_news_send, only: [:edit, :update, :destroy]
    
  def index
        @news_send = NewsSend.new
        @news_sends = NewsSend.all
  end
    
  def edit
  end
  
  def update
    if @news_send.update(news_send_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @news_send.destroy
    redirect_to root_path
  end
    
  def create
        @news_send = NewsSend.new(news_send_params)
        @news_send.save
        redirect_to root_path , notice: '投稿完了です'
  end
    
  private
    def news_send_params
        params.require(:news_send).permit(:news_title, :news_body, :news_point, :photo)
    end
      
    def set_news_send
        @news_send = NewsSend.find(params[:id])
    end
end
