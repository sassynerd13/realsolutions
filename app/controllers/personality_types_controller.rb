class PersonalityTypesController < ApplicationController

  def index
    @personality_types = PersonalityType.all
    @personality_type = PersonalityType.new
  end

  # comes to this view from the assessments#index controller
  def show
    @a_id = params[:a_id]
    @user_personality_type = Traitify.new.find_results(":a_id").personality_blend.personality_type_1.name
    user = (PersonalityType.find_by(type_name: @user_personality_type))
    if user_signed_in?
      current_user.update(personality_type_id: (@user.id))
    else
      render :view
    end
  end

  # maps to results_path
  def view
    user = (PersonalityType.find_by(type_name: @user_personality_type))
    @user_description = user.type_description
    @user_realsolution = user.realsolution
  end
end
