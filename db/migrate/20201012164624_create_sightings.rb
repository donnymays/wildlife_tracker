class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.column(:date, :date)
      t.column(:lat, :decimal, {:precision=>10, :scale=>6})
      t.column(:lng, :decimal, {:precision=>10, :scale=>6})
      t.column(:animal_id, :integer)

      t.timestamps
    end
  end
end
