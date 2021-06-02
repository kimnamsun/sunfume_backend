class OrderEachSerializer < BaseSerializer
  attributes :id, :user_id, :name, :phone, :address1, :total_price, :updated_at
  has_many :line_items, serializer: LineItemEachSerializer
end