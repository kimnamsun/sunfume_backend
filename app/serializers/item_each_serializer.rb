class ItemEachSerializer < Panko::Serializer
  include ImagableSerializer

  attributes :id, :user_id, :name, :list_price, :sale_price, :sale_rate

  has_one :category, serializer: CategorySerializer
  has_many :options, serializer: OptionEachSerializer
end
