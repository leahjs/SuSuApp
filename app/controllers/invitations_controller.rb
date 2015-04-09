class InvitationsController < ApplicationController
  def index
  end

  def new

  end

  def create
    email = invitation_params[:guest]
    @user = User.find_by(email: email)
    if @user.nil? 
      @user = User.create_and_send_email(email)
    end
    @pool = Pool.find_by(id: invitation_params[:pool_id ])
    @pool.invitations.build(guest_id: @user.id)
    @pool.save
    flash[:notice] = "Invitation Sent!"
    redirect_to new_user_path
  end

  def accept_invitation
    binding.pry
  end

  def decline_invitation

  end

  def destroy
    
  end

  def edit
  end

  def invitation_params
   params.require(:invitation).permit(:guest, :pool_id)
  end
end
