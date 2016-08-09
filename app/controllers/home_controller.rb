class HomeController < ApplicationController
  # ユーザがログインしていないと"edit"にアクセスできない
  before_action :authenticate_user!, only: :edit
  # 本来一つ下と一つ上の「:edit」部分は「:show」だった
  before_action :sign_in_required, only: [:edit]
  def index
  end

  def show
  end
end
