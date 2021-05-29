class LineItemSerializer < BaseSerializer
  attributes :id, :order_id, :option_id, :quantity, :total_price, :item_id 
end