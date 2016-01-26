class VolunteerApplicationsController < ApplicationController
  def new
    @volunteer_application = VolunteerApplication.new
  end

  def create
    @volunteer_application =
      VolunteerApplication.new(volunteer_application_params)
    if @volunteer_application.save
      flash[:success] =
        "Thank you for submitting an application. We will contact you shortly."
      redirect_to volunteer_path
    else
      flash.now[:error] =
        "Please review your application, some information is missing."
      render :new
    end
  end

  private

  def volunteer_application_params
    params.require(:volunteer_application).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :cell,
      :email,
      :reason_for_volunteering,
      :volunteering_type,
      :rat_cage_location,
      :transportation,
      :vet_appointments,
      :caring_for_ill_rats,
      :other_rats,
      :other_rats_count,
      :other_rats_gender,
      :other_rats_age,
      :other_animals,
      :other_animals_type,
      :other_animals_count,
      :work_location,
      :hours_away_from_home,
      :rat_interaction_time,
      :adoption_appointments,
      :comments_or_questions
    )
  end
end
