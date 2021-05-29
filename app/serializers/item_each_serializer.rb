class ItemEachSerializer < Panko::Serializer
  attributes :id, :name, :price, :category_id, :images
  has_many :reviews, serializer: ReviewEachSerializer
end
