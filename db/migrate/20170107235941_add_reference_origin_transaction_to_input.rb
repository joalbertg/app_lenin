class AddReferenceOriginTransactionToInput < ActiveRecord::Migration
  def change
    add_reference :origin_inputs, :origin_transaction, index: true, foreign_key: true
  end
end
