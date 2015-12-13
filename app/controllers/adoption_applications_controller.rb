class AdoptionApplicationsController < ApplicationController
  def new
    @adoption_application = AdoptionApplication.new
  end

  def create
    @adoption_application = AdoptionApplication.new(adoption_application_params)

    if @adoption_application.save
      flash[:success] = "Thank you for submitting an application. We will contact you shortly." 
      redirect_to rat_adoptions_path
    else 
      flash[:error] = "Please review your application, some information is missing."
      render :new
    end
  end

  private

  def adoption_application_params
    params.require(:adoption_application).permit(
        :name,
        :address,
        :city,
        :cell,
        :state,
        :zip,
        :email,
        :current_rat_count,
        :current_rat_gender,
        :current_rat_age,
        :previous_rat_count,
        :previous_rat_lifespan,
        :cause_of_death,
        :vet_care,
        :vet_name,
        :cage_description,
        :cage_location,
        :household_members,
        :children_ages,
        :additional_animals,
        :interaction_time,
        :preferred_characteristics,
        :current_rats,
        :previous_rats,
      )
  end
end
