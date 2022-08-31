class Host::EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.host = current_user
    @event.save

    # Redirect to host dashboard after creating the event
    redirect_to events_path
  end

  def update

  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :address,
      :date,
      :category,
      :level,
      :host_request,
      :max_number_guest,
      :min_price,
      :max_price
    )
  end
end
