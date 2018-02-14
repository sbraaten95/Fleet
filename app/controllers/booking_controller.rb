class BookingController < ApplicationController
  def index
  	on_booking_page = true
  end
  def user_reservation
  end
  def new
  	@reservation = Reservation.new(reservation_params)
  	@reservation.save
  	redirect_to '/booking/result'
  end
  def result
  end
  def reservation_params
  	params.require(:reservation).permit(:first_name, :last_name, :phone, :email, :date, :pickuptime, :dropofftime, :pickupaddress, :dropoffaddress, :extra)
  end
end
