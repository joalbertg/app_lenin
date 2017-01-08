class OriginInputsController < ApplicationController
  before_action :set_origin_input, only: [:show, :edit, :update, :destroy]

  # GET /origin_inputs
  # GET /origin_inputs.json
  def index
    @origin_inputs = OriginInput.all
  end

  # GET /origin_inputs/1
  # GET /origin_inputs/1.json
  def show
  end

  # GET /origin_inputs/new
  def new
    @origin_input = OriginInput.new
  end

  # GET /origin_inputs/1/edit
  def edit
  end

  # POST /origin_inputs
  # POST /origin_inputs.json
  def create
    @origin_input = OriginInput.new(origin_input_params)

    respond_to do |format|
      if @origin_input.save
        format.html { redirect_to @origin_input, notice: 'Origin input was successfully created.' }
        format.json { render :show, status: :created, location: @origin_input }
      else
        format.html { render :new }
        format.json { render json: @origin_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origin_inputs/1
  # PATCH/PUT /origin_inputs/1.json
  def update
    respond_to do |format|
      if @origin_input.update(origin_input_params)
        format.html { redirect_to @origin_input, notice: 'Origin input was successfully updated.' }
        format.json { render :show, status: :ok, location: @origin_input }
      else
        format.html { render :edit }
        format.json { render json: @origin_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origin_inputs/1
  # DELETE /origin_inputs/1.json
  def destroy
    @origin_input.destroy
    respond_to do |format|
      format.html { redirect_to origin_inputs_url, notice: 'Origin input was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origin_input
      @origin_input = OriginInput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origin_input_params
      params.require(:origin_input).permit(:prev_hash, :output_index, :script, :output_value, :sequence, :addresses, :script_type)
    end
end
