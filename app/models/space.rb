class Space < ApplicationRecord
  belongs_to :owner
  mount_uploaders :images, ImageUploader
  serialize :images, Array
  validates_length_of :images, maximum: 6
  has_many :bookings

  validates :name, :street, :suburb, :state, :postcode, :country, presence: true
  geocoded_by :full_street_address

  after_validation :geocode
  attr_accessor :country_code


  def full_street_address
    [number, street, suburb, state, postcode, country].compact.join(',')
    #compact takes out any fields that are left blank when the form is filled out
    #join joins all the items with what's in the brackets in between the items
  end

end
