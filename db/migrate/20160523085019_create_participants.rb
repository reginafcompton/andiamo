class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string  :name
      t.string  :arrival_time
      t.integer :arrival_day_id
      t.integer :arrival_city_id
      t.string  :arrival_mode
      t.string  :departure_time
      t.integer :departure_day_id
      t.integer :departure_city_id
      t.string  :departure_mode

      t.timestamps
    end
  end
end
