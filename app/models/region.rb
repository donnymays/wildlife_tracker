class Region < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :animals, :through => :sightings
end