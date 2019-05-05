require 'pry'
class Garage < ApplicationRecord
     belongs_to :event
     belongs_to :user, optional: true

    #  s


    # def first_row 
    #     if garage.garage_number >= 2 
    #          @first_row << garage
    #     end
    #     @first_row
    # end

end