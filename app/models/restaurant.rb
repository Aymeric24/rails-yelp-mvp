class Restaurant < ApplicationRecord
  has_many :reviews
  country = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: country }
end
