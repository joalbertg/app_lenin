class CreateOriginOutputs < ActiveRecord::Migration
  def change
    create_table :origin_outputs do |t|
      t.integer :value
      t.text :script
      t.text :addresses
      t.string :script_type

      t.timestamps null: false
    end
  end
end
