class User < ApplicationRecord
  paginates_per 8
  include ImageUrl
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :items, dependent: :nullify
  has_many :orders, dependent: :nullify
  has_many :likes, dependent: :destroy
  has_many :reviews, dependent: :nullify
  has_many :reviewed_items, through: :reviews, source: :item
  has_many :liked_items, through: :likes, source: :item
  enum gender: { unknown: 0, male: 1, female: 2 }
end