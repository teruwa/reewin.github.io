class RegistrationsController < ApplicationController
# ユーザー登録完了後のリダイレクト先のパスの設定を「admin_user_mail_sent_message_path」部分でしてる
  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

  def after_inactive_sign_up_path_for(resource)
    edit_user_registration_path
  end
end
