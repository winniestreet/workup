class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_booking_confirmation.subject
  #
  def new_booking_confirmation(booking_id)
  @booking = Booking.find(booking_id)
  @worker = @booking.worker
  mail(to: @worker.email, subject: "Your latest booking")
end

def new_attendee_notification(booking_id)
  @booking = Booking.find(booking_id)
  @space = @booking.space
  @owner = @space.owner
  mail(to: @owner.email, subject: "You have a new booking!")
end
end
