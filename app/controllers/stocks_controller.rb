class StocksController < ApplicationController
  def search
    if params[:stock].present?
      @stock = Stock.new_lookup(params[:stock])
      if @stock
        render "users/my_portfolio"
      else
        flash[:alert] = "Please Enter a valid symbol to search!"
        redirect_to portfolio_path
      end
    else
      flash[:alert] = "Please Enter a symbol to search!"
      redirect_to portfolio_path
    end
  end
end
