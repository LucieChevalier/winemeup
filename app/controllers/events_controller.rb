class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:event_id])
    @current_user = current_user
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :address, :date, :category, :level, :host_request, :max_number_guest, :min_price, :max_price)
  end
end
