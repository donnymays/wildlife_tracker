class Animal < ApplicationRecord
  has_many :sightings, dependent: :destroy
  has_many :regions, :through => :sightings
end