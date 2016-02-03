class CreateNewsletterFinders < ActiveRecord::Migration
  def change
    create_table :newsletter_finders do |t|

      t.timestamps null: false
    end
  end
end
