class Order < ApplicationRecord
  enum status: { disabled:0, active:1, pending: 2}
  belongs_to :user, optional: true
  has_many :line_items, dependent: :destroy
end
