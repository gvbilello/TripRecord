class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			redirect_to user
		else
			flash[:danger] = 'Invalid password and/or password.'
			render 'new'
		end
	end

	def destroy
		session.clear
		redirect_to root_url
	end

end