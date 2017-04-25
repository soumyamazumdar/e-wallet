class InitialpageController < ApplicationController
  def new
  end

  def index
  	if admin_signed_in?
  		@user = current_admin
  		if @user.customer== true
  			redirect_to  initialpage_customer_path
  		else
  			redirect_to  initialpage_admin_path
  		end
  	end
  end

  def admin
  	if admin_signed_in?
  		@user = current_admin
  	else
  		redirect_to new_admin_session_path
  	end

  end

  def customer
   
  end
end
