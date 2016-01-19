class CreateVolunteerApplications < ActiveRecord::Migration
  def change
    create_table :volunteer_applications do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :cell, null: false
      t.string :email, null: false
      t.text :reason_for_volunteering
      t.string :volunteering_type
      t.text :rat_cage_location
      t.string :transportation
      t.string :vet_appointments
      t.string :caring_for_ill_rats
      t.string :other_rats
      t.string :other_rats_count
      t.string :other_rats_gender
      t.string :other_rats_age
      t.string :other_animals
      t.string :other_animals_type
      t.string :other_animals_count
      t.string :work_location
      t.string :hours_away_from_home
      t.string :rat_interaction_time
      t.string :adoption_appointments
      t.text :comments_or_questions

      t.timestamps null: false
    end
  end
end
