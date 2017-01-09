class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :user_city
      t.boolean :user_avatar
      t.integer :perf_maker_id

      t.timestamps
    end
  end
end
