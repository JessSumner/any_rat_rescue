class AddColumsToAdoptionApplications < ActiveRecord::Migration
  def change
    add_column :adoption_applications, :name, :string
    add_column :adoption_applications, :address, :string
    add_column :adoption_applications, :city, :string
    add_column :adoption_applications, :cell, :string
    add_column :adoption_applications, :email, :email
  end
end
