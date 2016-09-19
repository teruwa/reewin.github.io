class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  # ！一つ下の「def after_sign_in_path_for(resource)」はhttp://qiita.com/cigalecigales/items/73d7bd7ec59a001ccd74をもとに独自で勝手にrake routesでパスを調べて書き換えたに
  # ログイン後のページを変更している
  def after_sign_in_path_for(resource)
        home_index_path
  end
  
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kentyou_id, :magazine])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :telephone_number, :jyuusyo, :shopowner, :hitokoto_comment, :profile_comment, :kentyou_id, :shopkentyou_id, :photo_thoumbnail, :magazine, :avatar, :avatar2, :avatar3, :photo, :admin])
  end

    private
        def sign_in_required
            redirect_to new_user_session_url unless user_signed_in?
        end
end
