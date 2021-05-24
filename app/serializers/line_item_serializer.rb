class LineItemSerializer < BaseSerializer
  attributes :id, :order_id, :option_id, :quantity, :total_price, :item_id 
  has_one :option, serializer: OptionEachSerializer
  has_many :item, serializer: ItemEachSerializer
end