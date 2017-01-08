class OriginTransactionsController < ApplicationController
  before_action :set_origin_transaction, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, :only => [:create]

  # GET /origin_transactions
  # GET /origin_transactions.json
  def index
    @origin_transactions = OriginTransaction.all
  end

  # GET /origin_transactions/1
  # GET /origin_transactions/1.json
  def show
  end

  # POST /origin_transactions
  # POST /origin_transactions.json
  def create
    @origin_transaction = OriginTransaction.new(origin_transaction_params)

    respond_to do |format|
      if @origin_transaction.save
        format.html { redirect_to @origin_transaction, notice: 'Origin transaction was successfully created.' }
        format.json { render :show, status: :created, location: @origin_transaction }
      else
        format.html { render :new }
        format.json { render json: @origin_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origin_transaction
      @origin_transaction = OriginTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origin_transaction_params
      params.deep_transform_keys! { |key| key == "hash" ? "origin_hash" : ( key == "inputs" ? "origin_inputs_attributes" : ( key == "outputs" ? "origin_outputs_attributes" : key)) }
      params.permit(
        :block_height, 
        :block_index, 
        :origin_hash, 
        :total, 
        :fees, 
        :size, 
        :preference, 
        :relayed_by, 
        :received, 
        :ver, 
        :lock_time, 
        :double_spend, 
        :vin_sz, 
        :vout_sz, :confirmations,
        :origin_inputs_attributes => [ :prev_hash, :output_index, :script, :output_value, :sequence, :addresses, :script_type ],
        :origin_outputs_attributes => [ :value, :script, :addresses, :script_type ])
    end
end
