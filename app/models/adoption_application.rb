class AdoptionApplication < ActiveRecord::Base
  FORM_FIELDS = %w(name address city cell state zip email current_rats
                current_rat_count current_rat_gender current_rat_age
                previous_rats previous_rat_count previous_rat_lifespan
                cause_of_death vet_care vet_name cage_description cage_location
                household_members children_ages additional_animals
                interaction_time preferred_characteristics).freeze

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
