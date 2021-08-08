class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # ４から６行目の記述をadmins/sessions_controller.rbに記述する
  def after_sign_in_path_for(resource)
    
      asmins_homes_top_path
      
    # ４行目と９行目の記述をcustomers/session_controller.rbに記述する
      root_path
    end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number])
    
  end
end
