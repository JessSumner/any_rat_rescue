class AdoptionApplication < ActiveRecord::Base
  VALID_PHONE_REGEX = /[0-9]{10}/
  before_save :downcase_email
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :cell, presence: true, format: {
                     with: VALID_PHONE_REGEX,
                     message: "Please enter phone number without spaces or
                              hyphens."
                   }
  validates :email, email: true, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
