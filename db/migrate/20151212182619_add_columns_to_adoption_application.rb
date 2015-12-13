class AddColumnsToAdoptionApplication < ActiveRecord::Migration
  def change
    add_column :adoption_applications, :current_rats, :string
    add_column :adoption_applications, :previous_rats, :string
  end
end
