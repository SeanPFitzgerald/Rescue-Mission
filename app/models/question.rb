class Question < ApplicationRecord
  # belongs_to :user

  validates :title, presence: true
  validates :title, length: { minimum: 20 }
  validates :description, presence: true
  validates :description, length: { minimum: 50 }
  # validates :user, presence: true
end
