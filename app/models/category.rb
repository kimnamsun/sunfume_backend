class Category < ApplicationRecord
  has_many :item, dependent: :nullify
end
