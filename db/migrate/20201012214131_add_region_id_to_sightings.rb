class AddRegionIdToSightings < ActiveRecord::Migration[5.2]
  def change
    add_column(:sightings, :region_id, :integer)
  end
end
