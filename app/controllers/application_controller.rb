class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  rescue_from SecurityError do |exception|
    redirect_to root_url, notice: 'アドミン画面へのアクセス権限がありません。'
  end

  protected

  def authenticate_admin_user!
    raise SecurityError unless current_user.try(:admin?)
  end

  def authenticate_manager_user!
    unless current_user.manager?
      flash[:error] = "スタジオ管理画面へのアクセス権限がありません。"
      redirect_to root_url
    end
  end

  def configure_permitted_parameters
    added_attrs = [:account_name, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :phone, :role]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
