class SeriesController < ApplicationController
  before_action :set_series, only: %i[ show edit update destroy ]

  # GET /series or /series.json
  def index
    @series = Series.all
  end

  # GET /series/1 or /series/1.json
  def show
  end

  # GET /series/new
  def new
    @series = Series.new
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series or /series.json
  def create
    @series = Series.new(series_params)

    respond_to do |format|
      if @series.save
        format.html { redirect_to series_url(@series), notice: "Series was successfully created." }
        format.json { render :show, status: :created, location: @series }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /series/1 or /series/1.json
  def update
    respond_to do |format|
      if @series.update(series_params)
        format.html { redirect_to series_url(@series), notice: "Series was successfully updated." }
        format.json { render :show, status: :ok, location: @series }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /series/1 or /series/1.json
  def destroy
    @series.destroy

    respond_to do |format|
      format.html { redirect_to series_index_url, notice: "Series was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Series.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def series_params
      params.require(:series).permit(:title, :duration)
    end
end
