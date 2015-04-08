class UsersController < ApplicationController
	def new
		# binding.pry
	end

	def show
		@user = User.find(params[:id])
	end
end
