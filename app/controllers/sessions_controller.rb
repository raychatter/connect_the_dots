class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
	    # Sign the user in and redirect to the user's show page.
	    sign_in user
      redirect_to user
		else
		    flash.now[:error] = 'Invalid email/password combination' #TODO: Fix this
      	render 'new'
		end
	end

	def destroy
		redirect_to root_path
	end
end
