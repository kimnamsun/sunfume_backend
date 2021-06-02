class Option < ApplicationRecord
  validates :name, presence: true
  validates :add_price, presence: true
  belongs_to :item
  has_many :line_items, dependent: :nullify
end
