class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :worker
  # belongs_to :calendar

end
