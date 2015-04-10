class PoolsController < ApplicationController
  def index

  end

  def new

  end

  def create
    @pool = current_user.pools.build(pool_params)
    @pool.lifeguard_id = current_user.id
    if current_user.save
      redirect_to pool_path(@pool)
    else
      render('new')
    end
  end

  def edit
  end

  def start_pool
    @pool = Pool.find(params["format"])
    @pool.update(start_date: Date.today)
    redirect_to "/profile"
    flash[:notice] = "Pool Started"
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
