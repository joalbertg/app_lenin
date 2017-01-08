class OriginTransaction < ActiveRecord::Base
	has_many :origin_inputs, inverse_of: :origin_transaction
	has_many :origin_outputs, inverse_of: :origin_transaction

	accepts_nested_attributes_for :origin_inputs
	accepts_nested_attributes_for :origin_outputs
end
