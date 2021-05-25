class ItemEachSerializer < Panko::Serializer
  attributes :id, :name, :price, :category_id, :images

  has_one :category, serializer: CategorySerializer
  has_many :option, serializer: OptionEachSerializer
  has_many :reviews, serializer: ReviewEachSerializer
end
