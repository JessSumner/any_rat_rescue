class CreateAdoptionApplications < ActiveRecord::Migration
  def change
    create_table :adoption_applications do |t|

      t.timestamps null: false
    end
  end
end
