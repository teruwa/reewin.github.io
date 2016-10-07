class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :update, :destroy]
  
  def index
    @question = Question.new
    @questions = Question.all
  end
  
  def edit
  end
  
  def destroy
    @question.destroy
    redirect_to root_path, notice: 'よくある質問を削除しました'
  end
  
  def update
    if @question.update(question_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: 'よくある質問、を編集しました'
    else
      # 保存に失敗した場合は編集画面へ戻す
      render 'edit'
    end
  end
  
  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to root_path , notice: 'よくある質問、を投稿しました'
  end
  
  private
  def question_params
    params.require(:question).permit(:question, :answer)
  end
  
  def set_question
    @question = Question.find(params[:id])
  end
  
end
