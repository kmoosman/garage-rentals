require 'pry'
class Garage < ApplicationRecord
     belongs_to :event
     belongs_to :user, optional: true
     scope :list_garages, -> (event_id) { where(event_id: event_id) }
end