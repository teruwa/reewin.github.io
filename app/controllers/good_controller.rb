class GoodController < ApplicationController
 before_action :set_good, only: [:edit, :update, :destroy]
 
 def index
  @good = Good.new
  @goods = Good.all
 end
 
 def edit
 end
  
  def update
    if @good.update(good_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to :back , notice: '編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
 
  def create
    @good = Good.new(good_params)
    @good.save
    redirect_to :back , notice: '症状を保存しました'
  end
  
  def destroy
    @good.destroy
    redirect_to :back, notice: 'メッセージを削除しました'
  end
 
 def all_goods
  if params[:symptom].present?
    @goods = Good.tagged_with(params[:symptom])
  else
    @goods = Good.all
  end
 end
 
 def energy_enhancer
  @review = Review.new
  @good = Good.find_by(goods_name: "Energy enhancer")
 end
 
 def icewave
  @review = Review.new
  @good = Good.find_by(goods_name: "Icewave")
 end
 
 def silentnights
  @review = Review.new
  @good = Good.find_by(goods_name: "Silent nights")
 end
 
 def sp6complete
  @review = Review.new
  @good = Good.find_by(goods_name: "SP6 complete")
 end
 
 def y_age_aeon
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age aeon")
 end
 
 def y_age_carnosine
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age carnosine")
 end
 
 def y_age_glutathione
  @review = Review.new
  @good = Good.find_by(goods_name: "Y-age glutathione")
 end
 
 def aravida
  @review = Review.new
  @good = Good.find_by(goods_name: "Aravida")
 end
 
 
 private
  def good_params
    params.require(:good).permit(:goods_name, :symptom_list)
  end
 
 def set_good
    @good = Good.find(params[:id])
 end
end