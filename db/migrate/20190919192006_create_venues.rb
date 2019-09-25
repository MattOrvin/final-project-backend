class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string "eventbrite_id"
      t.string "name"

      t.timestamps
    end
  end
end
