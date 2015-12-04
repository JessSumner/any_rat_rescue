class AdoptionApplication < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :cell, presence: true
  validates :email, presence: true
end
