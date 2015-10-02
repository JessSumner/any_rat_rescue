class RatAdoptionsController < ApplicationController
  ANY_RAT_RESCUE_PETFINDER_ID = "AZ173"

  def index
    @available_rats = available_rats
  end

  private

  def petfinder
    @_petfinder ||= Petfinder::Client.new
  end

  def any_rat_rescue
    @_any_rat_rescue ||= petfinder.shelter(ANY_RAT_RESCUE_PETFINDER_ID)
  end

  def available_rats
    @_available_rats ||= petfinder.shelter_pets(any_rat_rescue.id)
  end
end
