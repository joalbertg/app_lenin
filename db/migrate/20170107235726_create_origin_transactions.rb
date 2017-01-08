class CreateOriginTransactions < ActiveRecord::Migration
  def change
    create_table :origin_transactions do |t|
      t.integer :block_height
      t.integer :block_index
      t.text :origin_hash
      t.integer :total
      t.integer :fees
      t.integer :size
      t.string :preference
      t.string :relayed_by
      t.datetime :received
      t.integer :ver
      t.integer :lock_time
      t.boolean :double_spend
      t.integer :vin_sz
      t.integer :vout_sz
      t.integer :confirmations

      t.timestamps null: false
    end
  end
end
