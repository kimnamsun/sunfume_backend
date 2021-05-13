class OptionEachSerializer < BaseSerializer
  attributes :id, :item_id, :name, :add_price 
  # has_one :item, serializer: ItemEachSerializer
end