class InvitationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @invitation = Invitation.new
    binding.pry
  end

  def destroy
  end

  def edit
  end
end
