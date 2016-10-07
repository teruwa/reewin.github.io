class ReviewsController < ApplicationController
  def create
    @good = Good.find(params[:good_id])
    @review = @good.reviews.build(review_params)
    if @review.save
      flash[:success] = "レビュー投稿が完了しました、ご意見ありがとうございます"
      redirect_to :back
    else
      render '/good/all_goods'
    end
  end
  
  def destroy
   @review = Review.find(params[:id])
   @review.destroy
   redirect_to :back 
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
