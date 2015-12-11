class AdoptionApplication < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save :downcase_email
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :cell, presence: true
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }
end
