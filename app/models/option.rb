class Option < ApplicationRecord
  validates :name, presence: true
  validates :add_price, presence: true
  belongs_to :item

  has_many :line_item, dependent: :nullify
end
