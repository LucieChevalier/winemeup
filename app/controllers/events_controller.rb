class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.all.order(:date).select { |event| event.date >= Date.today }
  end

  def show
    @event = Event.find(params[:id])
    @bookings = Booking.all.where(event_id: params[:id])
    @booking = Booking.new
  end

  # def longuedescription(description)
  #   if description.to_s.count >= 20
  #     puts "[...]"
  #   else
  #     description
  #   end
  # end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :city, :postal_code, :region, :date, :category, :level, :host_request, :max_number_guest, :min_price, :max_price)
  end
end
