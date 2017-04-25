class CompaniesController < ApplicationController
before_action :authenticate_admin!


def index
	@companies = Company.all
end

def show
	@company = Company.find(params[:id])
end

def new
	@company = Company.new
end

def create
	@company = Company.new(company_params)

	if @company.save
	  flash[:notice]= 'company saved successfully'
	  redirect_to @company
    else
	  render 'new'
    end
end

def destroy
	@company = Company.find(params[:id])
	@company.destroy 
	redirect_to companies_path, :notice => "Deleted!!"
end

private
def company_params
	params.require(:company).permit(:name, :add, :city, :state, :email)
end
end
