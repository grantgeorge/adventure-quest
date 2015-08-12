class RideSerializer < ActiveModel::Serializer
  attributes :id, :name, :number_of_spots, :full_trip, :cost
  has_one :user
end
