class CustomersController < ApplicationController
before_action :authenticate_admin!

def index
  @customers = Customer.all
end

def show
	@customer = Customer.find(params[:id])
end

def new
	@customer = current_admin.customers.build
end

def create
	   @customer = current_admin.customers.build(customer_params)

	 if @customer.save
	 	flash[:notice] = "saved successfully"
	   redirect_to @customer
	else
		render action: 'new'
	 end
end

def destroy
	@customer = Customer.find(params[:id])
	@customer.destroy 
	redirect_to customers_path, :notice => "Deleted!!"
end


private
  def customer_params
  	params.require(:customer).permit(:lname, :mname, :fname,:dob,:add,:city,:state,:email)
  end	

end
