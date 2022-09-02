class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @bookings = Booking.all.where(event_id: params[:id])
    @booking = Booking.new
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :city, :postal_code, :region, :date, :category, :level, :host_request, :max_number_guest, :min_price, :max_price)
  end
end
