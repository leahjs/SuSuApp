class PoolsController < ApplicationController
  def index

  end

  def new

  end

  def create
    @pool = current_user.pools.build(pool_params)
    if current_user.save
      # If save succeeds, redirect to the index action
      redirect_to pool_path(@pool)
      flash[:notice] = "Subject created successfully."
    else
      render('new')
    end
  end

  def edit
  end

  def show
    @pool = Pool.find(params[:id])
  end

  def destroy
  end

  private

  def pool_params
   params.require(:pool).permit(:name, :pool_amount, :member_limit, :invitations => [:guest])
  end

end
