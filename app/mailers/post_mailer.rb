# class PostMailer < ApplicationMailer
class PostMailer < ActionMailer::Base
  # 「form:」のところに自分がお送りたい先を書くらしい
  default from: "teruwateruwa@yahoo.co.jp"
              
              
  def post_email(user, post)
    @post = post
    mail(
      # 送信先
      to: user.email,
      # 送信元のアドレス
      from: "life20wave16jp@gmail.com",
      # タイトル
      subject: post.subject
    )
  end
end
