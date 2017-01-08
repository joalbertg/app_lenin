class OriginOutputsController < ApplicationController
  before_action :set_origin_output, only: [:show, :edit, :update, :destroy]

  # GET /origin_outputs
  # GET /origin_outputs.json
  def index
    @origin_outputs = OriginOutput.all
  end

  # GET /origin_outputs/1
  # GET /origin_outputs/1.json
  def show
  end

  # GET /origin_outputs/new
  def new
    @origin_output = OriginOutput.new
  end

  # GET /origin_outputs/1/edit
  def edit
  end

  # POST /origin_outputs
  # POST /origin_outputs.json
  def create
    @origin_output = OriginOutput.new(origin_output_params)

    respond_to do |format|
      if @origin_output.save
        format.html { redirect_to @origin_output, notice: 'Origin output was successfully created.' }
        format.json { render :show, status: :created, location: @origin_output }
      else
        format.html { render :new }
        format.json { render json: @origin_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /origin_outputs/1
  # PATCH/PUT /origin_outputs/1.json
  def update
    respond_to do |format|
      if @origin_output.update(origin_output_params)
        format.html { redirect_to @origin_output, notice: 'Origin output was successfully updated.' }
        format.json { render :show, status: :ok, location: @origin_output }
      else
        format.html { render :edit }
        format.json { render json: @origin_output.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /origin_outputs/1
  # DELETE /origin_outputs/1.json
  def destroy
    @origin_output.destroy
    respond_to do |format|
      format.html { redirect_to origin_outputs_url, notice: 'Origin output was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_origin_output
      @origin_output = OriginOutput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def origin_output_params
      params.require(:origin_output).permit(:value, :script, :addresses, :script_type)
    end
end
