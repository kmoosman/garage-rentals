class User < ApplicationRecord
    has_many :events, through: :rentals
    has_many :rentals
    has_many :garages
    has_secure_password
    validates_uniqueness_of :username

end
