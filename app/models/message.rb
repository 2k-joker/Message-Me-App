class Message < ApplicationRecord
  # Associations
  belongs_to :user

  #Validations
  validates :body, presence: true
  
  # Scope
  scope :custom_display, -> { order(:created_at).last(30) }
end
