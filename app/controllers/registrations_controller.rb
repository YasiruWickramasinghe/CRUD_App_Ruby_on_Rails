class RegistrationsController < Devise::RegistrationsController
    # before_action :configure_permitted_parameters, if: :devise_controller?
  
    # def update
    #   # Your existing code for updating the resource
  
    #   validate_email_presence(resource)
    #   validate_empty_fields(resource)
    #   validate_password_confirmation(resource)
  
    #   unless resource.valid_password?(params[:user][:current_password])
    #     resource.errors.add(:current_password, "Current password is incorrect")
    #   end
  
    #   if resource.errors.any?
    #     flash.now[:alert] = resource.errors.full_messages.join(", ")
    #     render :edit
    #   else
    #     # Handle the successful update
    #   end
    # end
  
    # protected
  
    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.permit(:account_update, keys: [:current_password])
    # end
  
    # def validate_email_presence(resource)
    #   if resource.email.blank?
    #     resource.errors.add(:email, "Email cannot be blank")
    #   end
    # end
  
    # def validate_empty_fields(resource)
    #   if resource.email.blank? || params[:user][:password].blank? || params[:user][:password_confirmation].blank?
    #     resource.errors.add(:base, "All fields are required")
    #   end
    # end
  
    # def validate_password_confirmation(resource)
    #   if params[:user][:password] != params[:user][:password_confirmation]
    #     resource.errors.add(:password_confirmation, "Password and confirmation must match")
    #   end
    # end
  end

  
  