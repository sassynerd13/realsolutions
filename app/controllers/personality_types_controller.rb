class PersonalityTypesController < ApplicationController

  def show
    @user_personality_type = Assessment.results(@a_id)
    if user_signed_in?
      current_user.update(personality_type_id:

        PersonalityType.find_by(name: @user_personality_type).id)

      redirect_to user_personality_type_path
      else
         #params?
    end

  end

end
