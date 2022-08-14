class ExpansesController < ApplicationController
  before_action :set_expanse, only: %i[ show update destroy ]

  # GET /expanses
  def index
    
    if !(params[:category])
      @expanses = Expanse.all
    else
      @expanses = Expanse.where("category = ?",params[:category])
    end
    render json: @expanses
  end

  # GET /expanses/1
  def show
    render json: @expanse
  end

  # POST /expanses
  def create
    @expanse = Expanse.new(expanse_params)

    if @expanse.save
      render json: @expanse, status: :created, location: @expanse
    else
      render json: @expanse.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expanses/1
  def update
    if @expanse.update(expanse_params)
      render json: @expanse
    else
      render json: @expanse.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expanses/1
  def destroy
    @expanse.destroy
  end

  def filterByMounth
    @expanses = Expanse.where("cast(strftime('%Y', date) as int) = ?", params[:year])
    @expanses = Expanse.where("cast(strftime('%m', date) as int) = ?", params[:month])
    render json: @expanses
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expanse
      @expanse = Expanse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expanse_params
      params.require(:expanse).permit(:description, :value, :date, :category)
    end
end
