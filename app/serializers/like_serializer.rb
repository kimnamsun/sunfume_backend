class LikeSerializer < BaseSerializer
  attributes :id, :item_id
  has_many :item, serializer: ItemEachSerializer
end