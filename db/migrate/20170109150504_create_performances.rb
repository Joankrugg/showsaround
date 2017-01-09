class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances do |t|
      t.date :perf_date
      t.integer :band_id
      t.integer :place_id
      t.integer :perf_price
      t.string :facebook_event
      t.integer :perf_maker_id

      t.timestamps
    end
  end
end
