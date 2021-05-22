class ItemEachSerializer < Panko::Serializer
  attributes :id, :name, :price, :description, :category_id, :images, :status, :stock

  has_one :category, serializer: CategorySerializer
  has_many :option, serializer: OptionEachSerializer
  has_many :reviews, serializer: ReviewEachSerializer
end
