class InvitationsController < ApplicationController
  def index
  end

  def new

  end

  def create
    @user = User.find_or_create_by(email: invitation_params[:guest])
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
