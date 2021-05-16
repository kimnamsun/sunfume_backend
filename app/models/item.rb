class Item < ApplicationRecord
  has_many :option, dependent: :destroy
  has_many :like, dependent: :destroy
  has_many :liked_user, through: :likes, source: :user
  has_many :review, dependent: :destroy
	has_many :reviewed_user, through: :reviews, source: :user
  has_many :line_item, dependent: :destroy
  belongs_to :category, dependent: :destroy
end
