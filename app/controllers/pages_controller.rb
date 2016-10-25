class PagesController < ApplicationController

  def index
    @space = Space.all
    @booking = Booking.all
  end

  def login
  end

  def signup
  end

end
