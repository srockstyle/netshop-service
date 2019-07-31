class User::DashboardController < ApplicationController
  # 〜_user!の箇所はDeviseが対応しているユーザ名になる。
  # before_action :authenticate_user!
  before_action :authenticate_owner!
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
