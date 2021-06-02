class UserEachSerializer < Panko::Serializer
  include ImagableSerializer

  attributes :id, :email, :name, :phone
  has_many :reviews, serializer: ReviewEachSerializer
end
