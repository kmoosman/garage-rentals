class VenueSerializer < ActiveModel::Serializer
    attributes :id, :name, :city, :state
    has_many :events
end