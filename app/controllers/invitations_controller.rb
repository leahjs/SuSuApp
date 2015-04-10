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

  # def accept
  #   binding.pry
  #   @pool = Pool.find_by(id: pool_id)
  #   invitation = Invitation.find()
  #   invitation.update(confirmation_status: 'accepted')
  #   Swimmers.create(pool_id: )
  #   redirect_to
  # end

  # def decline
  #   invitation = Invitation.find()
  #   invitation.update(confirmation_status: 'declined')
  # end

  def destroy

  end

  def edit
  end

  def invitation_params
   params.require(:invitation).permit(:guest, :pool_id)
  end
end
