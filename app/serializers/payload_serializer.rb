class PayloadSerializer < Panko::Serializer
  include ImagableSerializer
  attributes :id, :email, :name, :gender, :phone, :address1
end
