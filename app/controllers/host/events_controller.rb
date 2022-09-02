class Host::EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.host = current_user
   
    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update

  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :city,
      :postal_code,
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
