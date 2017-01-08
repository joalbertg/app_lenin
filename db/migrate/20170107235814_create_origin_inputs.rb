class CreateOriginInputs < ActiveRecord::Migration
  def change
    create_table :origin_inputs do |t|
      t.text :prev_hash
      t.integer :output_index
      t.text :script
      t.integer :output_value
      t.decimal :sequence
      t.text :addresses
      t.string :script_type

      t.timestamps null: false
    end
  end
end
