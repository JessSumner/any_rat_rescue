class ResourcesController < ApplicationController

  def index
    @vets_phoenix = vets_phoenix  
  end

  private

  def vets_phoenix
    [
      {
        name: "Dr. Bill Langhofer",
        description: "The Scottsdale Veterinary Clinic\n7311 E Thomas Rd,\nScottsdale, AZ 85251",
        website: "http://www.scottsdaleveterinaryclinic.com",
        phone: "480-945-8484"
      }
    ]
  end
end
