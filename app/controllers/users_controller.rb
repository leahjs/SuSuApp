class UsersController < ApplicationController
	def new
		if current_user
			@open_invitations ||= current_user.invitations.where(confirmation_status: 'pending')
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def create
    @user = User.new(params[:user])
    Stripe::Customer.create()
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
