class LoginsController < ApplicationController
  def new
  	@login = Login.new
  end

  def create
  	@login = Login.new(params[:login])
  	if @login.save
  		redirect_to @login, notice: 'successfully created'
  	else
  		render action: 'new'
  	end
end

def show
	@login = Login.find(params[:id])
end

end
