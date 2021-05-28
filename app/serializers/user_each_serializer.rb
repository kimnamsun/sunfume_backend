  class UserEachSerializer < Panko::Serializer
    include ImagableSerializer

    attributes :id, :email, :name, :phone, :description, :follow_id
    has_many :reviews, serializer: ReviewEachSerializer
  end
