class Assessment < ActiveRecord::Base

# utility model, no database table
  require 'traitify'

# Traitify method, calls to API for assessment object ID attribute
  def self.create_assessment
    Traitify.new.create_assessment.id
  end

  def self.results(a_id)
    results_object = Traitify.new.find_results(a_id)
    results_object.personality_type_1
  end
end
