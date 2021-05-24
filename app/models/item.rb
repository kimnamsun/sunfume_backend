class Item < ApplicationRecord
  enum status: {disabled: 0, active: 1}

  has_many :option, dependent: :destroy
  has_many :like, dependent: :destroy
  has_many :liked_user, through: :likes, source: :user
  has_many :line_item, dependent: :destroy
  belongs_to :category, dependent: :destroy
  has_many :reviews, dependent: :destroy
	has_many :reviewed_user, through: :reviews, source: :user

  paginates_per 6
end
