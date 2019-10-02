class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string "eventbrite_id"
      t.string "eventbrite_venue_id"
      t.string "name"
      t.string "logo"
      t.string "start"
      t.string "end"
      t.string "summary"

      t.timestamps
    end
  end
end
