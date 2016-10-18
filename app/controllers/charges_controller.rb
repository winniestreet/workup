class ChargesController < ApplicationController

  def new
    @worker = Worker.find(params[:worker])
end

def create
  # Amount in cents
  @space = Space.find(params[:space])
  @amount = (@space.price * 100).to_i

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'aud'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

end
