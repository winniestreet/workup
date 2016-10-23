class ChargesController < ApplicationController
def new
  @booking = Booking.find(params[:booking_id])

end
def index
end


def create


  # Amount in cents
  @amount = params[:stripeAmount].to_i
  @booking = Booking.find(params[:thisBooking])

  # amount = 100
    # Create the customer in Stripe
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      card: params[:stripeToken]
    )
    # puts "wwwwwwwwwwwwwww"
    # puts params[:stripeToken]
    # puts "wwwwwwwwwwwwwww"

    # Create the charge using the customer data returned by Stripe API
    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'aud'
    )

    if charge[:paid] == true
      @booking.update_attributes(paid: true)
      ModelMailer.new_booking_confirmation(@booking.id).deliver_now
      ModelMailer.new_attendee_notification(@booking.id).deliver_now
    end
    # place more code upon successfully creating the charge
  rescue Stripe::CardError => e
    flash[:error] = e.message
    # puts "----------------"
    # puts price
    # puts "----------------"
    redirect_to charges_path


    flash[:notice] = "Please try again"

  end


end
