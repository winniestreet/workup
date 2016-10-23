require 'test_helper'

class ModelMailerTest < ActionMailer::TestCase
  test "new_booking_confirmation" do
    mail = ModelMailer.new_booking_confirmation
    assert_equal "New booking confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
