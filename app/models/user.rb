class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum:15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: { case_sensitive: false },
            length: {maximum: 64}, format: { with: VALID_EMAIL_REGEX }
  has_many :messages
  has_secure_password
end