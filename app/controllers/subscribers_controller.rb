class SubscribersController < ApplicationController

  def new
  end

  def update
    token = params[stripeToken]
    customer = Stripe::Customer.create(
      card: token,
      plan: class method here;
      )
    Current_user.stripeid = customer.id
    Current_user
  end
end
