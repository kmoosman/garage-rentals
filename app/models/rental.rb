class Rental < ApplicationRecord
    belongs_to :event
    belongs_to :user
    belongs_to :garage
end
