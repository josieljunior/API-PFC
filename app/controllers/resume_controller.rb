class ResumeController < ApplicationController
    before_action :set_expanses, :set_incomes

  def index
    render json: {
        "totalExpanses": @expanses.sum(:value),
        "totalIncomes": @incomes.sum(:value),
        "balance": @incomes.sum(:value) - @expanses.sum(:value),
        "expansesByCategory": @expanses.group(:category).sum(:value)
    }
  end

  private


    def set_incomes
      @incomes = Income.where("cast(strftime('%Y', date) as int) = ?", params[:year])
      @incomes = Income.where("cast(strftime('%m', date) as int) = ?", params[:month])
    end

    def set_expanses
      @expanses = Expanse.where("cast(strftime('%Y', date) as int) = ?", params[:year])
      @expanses = Expanse.where("cast(strftime('%m', date) as int) = ?", params[:month])
    end

    def resume_params
      params.require(:resume).permit(:totalexpanses, :totalincomes, :balance)
    end
end
