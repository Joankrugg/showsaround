class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.string :band_name
      t.string :rehearsal_address
      t.string :band_facebook
      t.string :band_price
      t.integer :genre_id
      t.integer :set_time
      t.integer :user_id
      t.integer :members_number
      t.boolean :transport
      t.boolean :band_avatar
      t.boolean :mersh

      t.timestamps
    end
  end
end
