class DashboardsController < ApplicationController
  def dashboard
    @hosted_events = current_user.events
    @attended_events = current_user.bookings.map do |booking|
      booking.event
    end
  end
end
