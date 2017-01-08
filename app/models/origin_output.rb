class OriginOutput < ActiveRecord::Base
	belongs_to :origin_transaction, inverse_of: :origin_outputs
end
