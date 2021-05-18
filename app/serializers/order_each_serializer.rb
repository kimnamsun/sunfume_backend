class OrderEachSerializer < Panko:Serializer
  attributes :id, :user_id, :receiver_name, :receiver_phone, :zipcode, :address1, :address2, :total_price, :created_at, :status 
end