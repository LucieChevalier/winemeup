class SurveysController < ApplicationController
  def new
    @survey = Survey.new # Initialisation de la survey
  end

  def create
    # Initialise une instance de survey

    @survey = Survey.new(survey_params)
    @survey.user = current_user

    if @survey.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def survey_params
    params.require(:survey).permit(:question_1, :question_2, :question_3)
  end
end
