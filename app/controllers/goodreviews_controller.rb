class GoodreviewsController < ApplicationController

  def create
    @review = current_good.reviews.build(review_params)
    if @review.save
      flash[:success] = "レビュー投稿が完了しました、ご意見ありがとうございます"
      redirect_to :back
    else
      render '/good/all_goods'
    end
  end
  
  private
  def review_params
    params.require(:review).permit(:content)
  end
  
  def show
    @good = Good.find(params[:id])
    @reviews = @good.reviews.order(created_at: :desc)
  end
  
end
