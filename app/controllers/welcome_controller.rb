class WelcomeController < ApplicationController
 
  def index
  	if admin_signed_in?
  		redirect_to initialpage_index_path
  	else
  		redirect_to new_admin_session_path
  	end	
  end
end


