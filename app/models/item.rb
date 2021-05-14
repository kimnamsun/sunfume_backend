class Item < ApplicationRecord
  has_many :options, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :reviews, dependent: :destroy
	has_many :reviewed_users, through: :reviews, source: :user
  has_many :line_items, dependent: :destroy
  belongs_to :category, dependent: :destroy
end
