class CustomersController < ApplicationController

def index
  @customers = Customer.all
end

def show
	@customer = Customer.find(params[:id])
end

def new
	@customer = Customer.new
end

def create
	   @customer = Customer.new(customer_params)

	 if @customer.save
	 	flash[:notice] = "saved successfully"
	   redirect_to @customer
	else
		render action: 'new'
	 end
end

private
  def customer_params
  	params.require(:customer).permit(:lname, :mname, :fname,:dob,:add,:city,:state,:email)
  end	

end
