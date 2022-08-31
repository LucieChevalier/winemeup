class BookingsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @booking = Booking.new
  end

  def create
    # Pick the event a current user wants to join
    @event = Event.find(params[:event_id])

    # Initialiser une instance de booking
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.guest = current_user

    # Redirection vers la page des réservations du renter
    @booking.save
    redirect_to event_path(@event)
  end

  private

  def booking_params
    params.require(:booking).permit(:comment)
  end
end
