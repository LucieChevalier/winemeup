class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.all.order(:date).order(:time).select { |event| event.date >= Date.today }

    if params[:query].present?
      sql_query = "category ILIKE :query OR description ILIKE :query OR level ILIKE :query OR city ILIKE :query OR name ILIKE :query"
      # sql_query = <<~SQL
      #   events.name @@ :query
      #   OR events.category @@ :query
      #   OR events.city @@ :query
      #   OR events.description @@ :query
      #   OR events.level @@ :query
      # SQL
      @events = Event.where('category ILIKE ?', "%#{params[:query]}%")
      # @events = Event.where(sql_query, query: "%#{params[:query]}%") # the "%" to make sure the string for search is taken anywhere in the sentence
    else
      @events = Event.all
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "events/search", locals: { events: @events }, formats: [:html] }
    end
  end


  def show
    @event = Event.find(params[:id])
    @bookings = Booking.all.where(event_id: params[:id])
    @booking = Booking.new

    # The `geocoded` scope filters only flats with coordinates
    # @markers = @event.geocoded
    # {
    #   lat: @event.latitude,
    #   lng: @event.longitude
    # }
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
    params.require(:event).permit(:name, :description, :address, :city, :postal_code, :region, :date, :category, :level, :host_request, :max_number_guest, :min_price, :max_price, :latitude, :longitude)
  end
end
