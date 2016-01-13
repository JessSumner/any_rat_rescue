class FosterApplication < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_PHONE_REGEX = /[0-9]{10}/
  before_save :downcase_email
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :phone, presence: true, format: {
                     with: VALID_PHONE_REGEX,
                     message: "Please enter phone number without spaces or hyphens."
                   }
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }

  private

  def downcase_email
    self.email = email.downcase
  end
end
