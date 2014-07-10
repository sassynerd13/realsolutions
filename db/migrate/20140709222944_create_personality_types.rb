class CreatePersonalityTypes < ActiveRecord::Migration
  def change
    create_table :personality_types do |t|
      t.string :type_name
      t.text :type_description
      t.text :realsolution
    end
  end
end
