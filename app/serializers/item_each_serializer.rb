class ItemEachSerializer < Panko::Serializer
  attributes :id, :name, :price, :description, :category_id, :images, :status, :stock

  has_one :category, serializer: CategorySerializer
  has_many :options, serializer: OptionEachSerializer
end
