class FosterApplicationsController < ApplicationController
  def new
    @foster_application = FosterApplication.new
  end

  def create
    @foster_application = FosterApplication.new(foster_application_params)
    if @foster_application.save
      flash[:success] =
        "Thank you for submitting an application. We will contact you shortly."
      redirect_to volunteer_path
    else
      flash[:error] =
        "Please review your application, some information is missing."
      render :new
    end
  end

  private

  def foster_application_params
    params.require(:foster_application).permit(
      :name,
      :address,
      :city,
      :state,
      :zip,
      :phone,
      :email,
      :reason_for_volunteering,
      :volunteering_type,
      :rat_cage_location,
      :transportation,
      :vet_appointments,
      :caring_for_ill_rats,
      :other_rats,
      :other_rats_number,
      :other_rats_gender,
      :other_animals,
      :other_animals_type,
      :other_animals_number,
      :work_location,
      :hours_away_from_home,
      :rat_interaction_time
    )
  end
end
