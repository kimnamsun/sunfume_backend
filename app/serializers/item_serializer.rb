  class ItemSerializer < BaseSerializer
    attributes :id, :user_id, :name, :list_price, :sale_price, :sale_rate, :description, :category_id, :image_ids
  end
