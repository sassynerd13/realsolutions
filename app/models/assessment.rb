class Assessment < ActiveRecord::Base

# utility model, no database table
  require 'traitify'

# Traitify method, calls to API for assessment object ID attribute
  def self.create_assessment
    Traitify.new.create_assessment.id
  end

# Currently not working for some reason. Assessment.results("x") returning nil
# in console. If anyone can help, please let me know!
  def self.results(a_id)
    Traitify.new.find_results(a_id).personality_blend.personality_type_1.name
  end
end
