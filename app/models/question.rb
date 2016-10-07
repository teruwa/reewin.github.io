class Question < ActiveRecord::Base
    # 質問内容質問内容は必須入力で５文字以上
  validates :question , length: { minimum: 5} , presence: true
  # 回答は必須入力かつ５文字以上
  validates :answer , length: { minimum: 5} , presence: true
end
