class AddReferenceOriginTransactionToOutput < ActiveRecord::Migration
  def change
    add_reference :origin_outputs, :origin_transaction, index: true, foreign_key: true
  end
end
