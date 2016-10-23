# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/new_booking_confirmation
  def new_booking_confirmation
    ModelMailer.new_booking_confirmation
  end

end
