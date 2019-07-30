class User::DashboardController < ApplicationController
  before_action :authenticate_user!
  # user_signed_in?
  # current_user
  # user_session

  # ユーザが参照するページ
  def show
  end

  # ショップ設定
  def shop_setting
  end
end
