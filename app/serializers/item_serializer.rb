  class ItemSerializer < BaseSerializer
    attributes :id, :name, :price, :description, :category_id, :images, :status, :stock, :capacity
    has_many :option, serializer: OptionEachSerializer
  end
