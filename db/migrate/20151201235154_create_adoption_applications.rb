class CreateAdoptionApplications < ActiveRecord::Migration
  def change
    create_table :adoption_applications do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :cell, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.string :email, null: false
      t.integer :current_rat_count
      t.string :current_rat_gender
      t.string :current_rat_age
      t.integer :previous_rat_count
      t.string :previous_rat_lifespan
      t.string :cause_of_death
      t.string :vet_care
      t.string :vet_name
      t.text :cage_description
      t.string :cage_location
      t.string :household_members
      t.string :children_ages
      t.string :additional_animals
      t.string :interaction_time
      t.text :preferred_characteristics

      t.timestamps null: false
    end
  end
end
