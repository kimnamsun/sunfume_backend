class LineItemEachSerializer < BaseSerializer
  attributes :id, :order_id, :option_id, :quantity, :total_price, :created_at, :item_id 
end