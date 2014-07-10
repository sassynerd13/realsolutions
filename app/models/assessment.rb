class Assessment < ActiveRecord::Base
    require 'traitify'

  def self.create_assessment
    Traitify.new.create_assessment.id
  end
end
