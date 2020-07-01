class Contact < ApplicationRecord
  # validates :email, presence: true
  # validates :message, presence: true

  validates :name, presence: true
  validates :phone, presence: true
end