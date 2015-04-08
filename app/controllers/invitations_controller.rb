class InvitationsController < ApplicationController
  def index
  end

  def new

  end

  def create
    @invitation = Invitation.new
    # binding.pry
    @invitation = current_user.pools.build(pool_params)
    current_user.save
    # binding.pry
    if current_user.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Subject created successfully."
      redirect_to pool_path(@pool)
    else
      # If save fails, redisplay the form so user can fix problems
      # @subject_count = Subject.count + 1
      render('new')
  end

  def destroy
  end

  def edit
  end
end
