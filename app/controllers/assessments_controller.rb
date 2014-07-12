class AssessmentsController < ApplicationController

# no view attached to index
  def index
    a_id = Assessment.create_assessment
    if user_signed_in?
      current_user.update(assessment_id: a_id)
    end
    redirect_to current_assessment_path(a_id)
  end

  def show
  # move to assessment show view
    # link_to results_path(params[:a_id])
  end
end
