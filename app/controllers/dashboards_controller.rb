class DashboardsController < ApplicationController
  def dashboard
    @hosted_events = current_user.events.order(:date).order(:time)
    @future_hosted_events = @hosted_events.select { |event| event.date >= Date.today }
    @past_hosted_events = @hosted_events.select { |event| event.date < Date.today }.reverse


    @attended_events = current_user.bookings.map(&:event).sort_by(&:date).sort_by(&:time)
    @future_attended_events = @attended_events.select { |event| event.date >= Date.today }
    @past_attended_events = @attended_events.select { |event| event.date < Date.today }.reverse    # Redirecting user

    survey = current_user.surveys.last
    @recommendations = survey.sommelier(survey.question_2, survey.question_3)
  end
end
