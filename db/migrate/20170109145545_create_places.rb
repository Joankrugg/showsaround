class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :place_name
      t.string :city
      t.string :place_address
      t.string :type
      t.string :place_facebook
      t.string :payment
      t.integer :user_id
      t.text :place_description
      t.integer :capacity
      t.integer :genre_id

      t.timestamps
    end
  end
end
