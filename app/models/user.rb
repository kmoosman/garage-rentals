class User < ApplicationRecord
    has_many :events, through: :garages
    has_many :garages
end
