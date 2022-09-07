class DashboardsController < ApplicationController
  def dashboard
    @hosted_events = current_user.events.order(:date).order(:time)
    @future_hosted_events = @hosted_events.select { |event| event.date >= Date.today }
    @past_hosted_events = @hosted_events.select { |event| event.date < Date.today }.reverse


    @attended_events = current_user.bookings.map(&:event).sort_by(&:date).sort_by(&:time)
    @future_attended_events = @attended_events.select { |event| event.date >= Date.today }
    @past_attended_events = @attended_events.select { |event| event.date < Date.today }.reverse    # Redirecting user

    survey = current_user.survey

    @recommendations = survey.sommelier(survey.question_2, survey.question_3)
  end

  def photo(category)
    case category
      when CATEGORIES[0]
        @recommendation_photo = "alsace.jpg"
      when CATEGORIES[1]
        @recommendation_photo = "beaujolais.jpg"
      when CATEGORIES[2]
        @recommendation_photo = "bordeaux.jpg"
      when CATEGORIES[3]
        @recommendation_photo = "bourgogne.jpg"
      when CATEGORIES[4]
        @recommendation_photo = "champagne.jpg"
      when CATEGORIES[5]
        @recommendation_photo = "corse.jpg"
      when CATEGORIES[6]
        @recommendation_photo = "jura.jpg"
      when CATEGORIES[7]
        @recommendation_photo = "languedoc.jpg"
      when CATEGORIES[8]
        @recommendation_photo = "loire.jpg"
      when CATEGORIES[9]
        @recommendation_photo = "provence.jpg"
      when CATEGORIES[10]
        @recommendation_photo = "rhone.jpg"
      when CATEGORIES[11]
        @recommendation_photo = "sud.jpg"
      end
    end
end
