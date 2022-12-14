class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query OR level ILIKE :query OR city ILIKE :query OR name ILIKE :query"
      # sql_query = <<~SQL
      #   events.name @@ :query
      #   OR events.category @@ :query
      #   OR events.city @@ :query
      #   OR events.description @@ :query
      #   OR events.level @@ :query
      # SQL
      @events = Event.where('name ILIKE ?', "%#{params[:query]}%").order(:date).order(:time).select { |event| event.date >= Date.today }
      # @events = Event.where(sql_query, query: "%#{params[:query]}%") # the "%" to make sure the string for search is taken anywhere in the sentence
    else
      @events = Event.all.order(:date).order(:time).select { |event| event.date >= Date.today }
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

    @marker = [{ lat: @event.latitude, lng: @event.longitude }]

    # Chatroom
    if @event.chatroom
      @chatroom = Chatroom.find_by(event: @event)
    else
      @chatroom = Chatroom.new(
                                name: @event.name,
                                event_id: @event.id
                              )
      @chatroom.save
    end

    @message = Message.new
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :city, :postal_code, :region, :date, :category, :level, :host_request, :max_number_guest, :min_price, :max_price, :latitude, :longitude)
  end
end
