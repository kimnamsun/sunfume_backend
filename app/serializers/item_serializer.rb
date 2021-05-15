  class ItemSerializer < BaseSerializer
    attributes :id, :name, :price, :description, :category_id, :images, :status, :stock, :capacity
    has_many :options, serializer: OptionEachSerializer
  end
