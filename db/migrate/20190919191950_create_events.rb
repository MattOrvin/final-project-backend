class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string "eventbrite_id"
      t.string "venue_id"
      t.string "name"

      t.timestamps
    end
  end
end
