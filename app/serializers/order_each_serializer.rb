class OrderEachSerializer < BaseSerializer
  attributes :id, :user_id, :receiver_name, :receiver_phone, :zipcode, :address1, :total_price, :updated_at

  has_many :line_items, serializer: LineItemEachSerializer
end