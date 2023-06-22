class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

          has_many :friends     
          
          #validates :email, presence: { message: "Email is required" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email format is invalid ( example@gmail.com )" }
          #validates :password, presence: { message: "Password is required" }    
          
          validate :password_match_validation

          def password_match_validation

            if password.blank?
              errors.add(:password, "Password is required")
            end  

            if password.present? && password_confirmation.present? && password != password_confirmation
              errors.add(:password_confirmation, "doesn't match Password")
            end
        
            if password.present?
              unless password.match?(/^(?=.*[A-Z])(?=.*\d)(?=.*[[:^alnum:]])[A-Za-z\d[:^alnum:]]{6,}$/)
                errors.add(:password, "must be at least 6 characters long and include at least one symbol, one number, and one uppercase letter")
              end
            end
          end

          validate :email_format_validation

          def email_format_validation
            if email.blank?
              errors.add(:email, "Email is required")
            elsif !email.match?(URI::MailTo::EMAIL_REGEXP)
              errors.add(:email, "is not in a valid format")
            end
          end  

end
