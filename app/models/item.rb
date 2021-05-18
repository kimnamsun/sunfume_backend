class Item < ApplicationRecord
  enum status: {disabled: 0, active: 1}

  has_many :option, dependent: :destroy
  has_many :like, dependent: :destroy
  has_many :liked_user, through: :likes, source: :user
  has_many :review, dependent: :destroy
	has_many :reviewed_user, through: :reviews, source: :user
  has_many :line_item, dependent: :destroy
  belongs_to :category, dependent: :destroy

  def puts_item_name
    puts self.name
  end

  def self.puts_item_names
    self.find_each do |item|
      puts item.name
    end
  end
end
