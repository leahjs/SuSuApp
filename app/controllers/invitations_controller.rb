class InvitationsController < ApplicationController
  def index
  end

  def new

  end

  def create
    # binding.pry
    @user = User.find_or_create_by(email: invitation_params[:guest])
    # binding.pry
    @pool = Pool.find_by(id: invitation_params[:pool_id ])
    @pool.invitations.build(guest_id: @user.id)
    @pool.save
    # params[:invitation]


    binding.pry
    # @invitation = current_user.pools.build(pool_params)

    # current_user.save
    # binding.pry
    # if current_user.save
      # If save succeeds, redirect to the index action
      # flash[:notice] = "Subject created successfully."
      # redirect_to pool_path(@pool)
    # else
      # If save fails, redisplay the form so user can fix problems
      # @subject_count = Subject.count + 1
      # render('new')
    # end
  end

  def destroy
  end

  def edit
  end

  def invitation_params
   params.require(:invitation).permit(:guest, :pool_id)
  end
end
