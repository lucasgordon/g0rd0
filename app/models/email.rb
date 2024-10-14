class Email < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: { message: "already subscribed" }
  validates :email, length: { maximum: 255 }
end
