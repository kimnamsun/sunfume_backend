class LineItemEachSerializer < BaseSerializer
  attributes :id, :order_id, :option_id, :quantity, :total_price, :created_at, :item_id 
  has_one :option, serializer: OptionEachSerializer
  has_one :item, serializer: ItemSerializer
end