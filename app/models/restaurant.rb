class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
