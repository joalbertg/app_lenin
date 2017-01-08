class OriginInput < ActiveRecord::Base
	belongs_to :origin_transaction, inverse_of: :origin_inputs
end
