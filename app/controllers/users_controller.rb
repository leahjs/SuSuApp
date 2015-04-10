class UsersController < ApplicationController
	def new
		# binding.pry
		session[:user_id] = User.first.id
	end

	def show
		@user = User.find(params[:id])
	end
end
