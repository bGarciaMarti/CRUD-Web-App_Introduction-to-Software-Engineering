class MainStatsArraysController < ApplicationController
  before_action :set_main_stats_array, only: %i[ show edit update destroy ]

  # GET /main_stats_arrays or /main_stats_arrays.json
  def index
    @main_stats_arrays = MainStatsArray.all
  end

  # GET /main_stats_arrays/1 or /main_stats_arrays/1.json
  def show
  end

  # GET /main_stats_arrays/new
  def new
    @main_stats_array = MainStatsArray.new
  end

  # GET /main_stats_arrays/1/edit
  def edit
  end

  # POST /main_stats_arrays or /main_stats_arrays.json
  def create
    @main_stats_array = MainStatsArray.new(main_stats_array_params)

    respond_to do |format|
      if @main_stats_array.save
        format.html { redirect_to main_stats_array_url(@main_stats_array), notice: "Main stats array was successfully created." }
        format.json { render :show, status: :created, location: @main_stats_array }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @main_stats_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_stats_arrays/1 or /main_stats_arrays/1.json
  def update
    respond_to do |format|
      if @main_stats_array.update(main_stats_array_params)
        format.html { redirect_to main_stats_array_url(@main_stats_array), notice: "Main stats array was successfully updated." }
        format.json { render :show, status: :ok, location: @main_stats_array }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @main_stats_array.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_stats_arrays/1 or /main_stats_arrays/1.json
  def destroy
    @main_stats_array.destroy

    respond_to do |format|
      format.html { redirect_to main_stats_arrays_url, notice: "Main stats array was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_stats_array
      @main_stats_array = MainStatsArray.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def main_stats_array_params
      params.require(:main_stats_array).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
    end
end
