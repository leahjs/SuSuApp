class PoolsController < ApplicationController
  def index

  end

  def new
    # @pool = current_user.pools.build
    # @pool.save
  end

  def create

    @pool = current_user.pools.build(pool_params)
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
  end

  def edit
  end

  def show
    # binding.pry
    @pool = Pool.find(params[:id])
  end

  def destroy
  end

  private

  def pool_params
   params.require(:pool).permit(:name, :pool_amount)
  end

end
