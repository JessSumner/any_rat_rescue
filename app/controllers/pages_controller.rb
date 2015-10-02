class PagesController < ApplicationController
  def adopt
    @available_rats = available_rats
  end

  private

  def petfinder
    @_petfinder ||= Petfinder::Client.new
  end

  def any_rat_rescue
    @_any_rat_rescue ||= petfinder.shelter("AZ173")
  end

  def available_rats
    @_available_rats ||= petfinder.shelter_pets(any_rat_rescue.id)
  end

end
