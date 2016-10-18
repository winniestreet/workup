class Space < ApplicationRecord
  belongs_to :owner
  mount_uploaders :images, ImageUploader
  serialize :images, Array
  validates_length_of :images, maximum: 6
  has_many :bookings

end
