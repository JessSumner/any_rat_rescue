class ContactMessage < ActiveRecord::Base
  before_save :downcase_email
  validates :name, presence: true
  validates :cell, cell: true, presence: true
  validates :email, email: true, presence: true
  validates :message, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
