class DepartingFlight < ApplicationRecord
  belongs_to :airport
  has_many :flights
end
