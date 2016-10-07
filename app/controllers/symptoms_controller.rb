class SymptomsController < ApplicationController
  before_action :set_good, only: [:edit, :update, :destroy]
  
  def edit
  end
 
  def create
    @symptom = Symptom.new(good_params)
    @symptom.save
    redirect_to :back , notice: '症状を保存しました'
  end
  
  def update
    if @symptom.update(good_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to '/good/all_goods' , notice: '編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def destroy
    @symptom.destroy
    redirect_to :back , notice: 'メッセージを削除しました'
  end


private
  def good_params
    params.require(:symptom).permit(:symptom)
  end
 
 def set_good
    @symptom = Symptom.find(params[:id])
 end
end