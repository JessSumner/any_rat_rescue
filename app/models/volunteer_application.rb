class VolunteerApplication < ActiveRecord::Base
  FORM_FIELDS = %w(
    name
    address
    city
    state
    zip
    cell
    email
    reason_for_volunteering
    volunteering_type
    rat_cage_location
    transportation
    vet_appointments
    caring_for_ill_rats
    other_rats
    other_rat_count
    other_rat_gender
    other_rat_age
    other_animals
    other_animals_type
    other_animals_count
    work_location
    hours_away_from_home
    rat_interaction_time
    adoption_appointments
    comments_or_questions
  ).freeze

  before_save :downcase_email
  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :cell, cell: true, presence: true
  validates :email, email: true, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
