class AssessmentsController < ApplicationController

  def index
    @a_id = Assessment.create_assessment
    if current_user
      current_user.update(assessment_id: @a_id)
    end
    redirect_to current_assessment_path(a_id: @a_id)
  end

    def show
      # ? Just needs to have @a_id to use in JS!
    end
end
