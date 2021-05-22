class ReviewEachSerializer < Panko::Serializer
  attributes :id, :item_id, :content, :rating, :created_at
end