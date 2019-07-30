class ApplicationController < ActionController::Base
  # 認証しているかどうか挟む
  before_action :configure_permitted_parameters, if: :devise_controller?

  # 参考
  # https://qiita.com/Hal_mai/items/350c400e8763ce0487a3
  # プロフィール画面用のアクションを追加
  def detail
    @user = User.find_by(id: params[:id])
  end

  # protected

  # ここのコメントアウトを外してリダイレクト先を指定
  # ルートパス名でも良い
  # The path used after sign up.
  def after_sign_up_path_for(resource)
    "/user/#{current_user.id}"
  end



  # このアクションを追加
  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end

  protected

  # 入力フォームからアカウント名情報をDBに保存するために追加
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
