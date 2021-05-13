class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :line_item, dependent: destroy
end
