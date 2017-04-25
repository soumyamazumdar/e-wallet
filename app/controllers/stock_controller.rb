class StockController < ApplicationController

def index
	@stocks = Stock.all
end

def create
  @stock = stock.new(stock_params)
  if @stock.save
	  flash[:notice]= 'stock saved successfully'
	  redirect_to @stock
    else
	  render 'new'
    end
end

def show
	@stock = Stock.find(params[:id])
end

def new
	@stock = Stock.new
end

private
def stock_params
	params.require(:stock).permit(:date, :description, :units, :price, :customer_id, :company_id)
end

end
