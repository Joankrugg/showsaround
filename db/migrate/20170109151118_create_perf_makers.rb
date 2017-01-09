class CreatePerfMakers < ActiveRecord::Migration[5.0]
  def change
    create_table :perf_makers do |t|
      t.string :equipment
      t.string :website
      t.string :association

      t.timestamps
    end
  end
end
