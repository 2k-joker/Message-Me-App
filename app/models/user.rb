class User < ApplicationRecord
  # Associations
  has_secure_password
  has_many :messages

  # Validations
  validates :username, presence: true, uniqueness: { case_snesitive: false },
    length: { minimum: 3, maximum: 15 }
end
