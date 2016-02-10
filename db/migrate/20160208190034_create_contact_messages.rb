class CreateContactMessages < ActiveRecord::Migration
  def change
    create_table :contact_messages do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :cell, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
