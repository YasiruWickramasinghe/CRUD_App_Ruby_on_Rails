class Friend < ApplicationRecord
    belongs_to :user
    validates :first_name, presence: { message: "First name is required" }
    validates :last_name, presence: { message: "Last name is required" }
    validates :email, presence: { message: "Email is required" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Email format is invalid ( example@gmail.com )" }
    validates :phone, presence: { message: "Phone number is required" }, format: { with: /\A[0-9]{10}\z/, message: "Phone number should only contain numbers" }, length: { is: 10, message: "Phone number should be exactly 10 digits" }
    validates :twitter, presence: { message: "Twitter name is required" }
end
