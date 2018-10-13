class Users::RegistrationsController < Devise::RegistrationsController
  def manager_edit

  end

  def manager_update
    current_user.assign_attributes(account_update_params)
    current_user.update_attributes(role: :manager)
    # current_user.role = 1
    # current_user.save
    if current_user.save
      redirect_to root_url, notice: '登録完了しました。'
    else
      render "manager_edit"
    end
  end

  protected
  
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :phone, :role])
  end
end