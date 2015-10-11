class ResourcesController < ApplicationController
  def index
    @vets_phoenix = vets_phoenix
    @vets_tucson = vets_tucson
    @vets_other_areas = vets_other_areas
    @pharmacy = pharmacy
  end

  private

  def vets_phoenix
    YAML.load_file("config/resources/vets_phoenix.yml")
  end

  def vets_tucson
    YAML.load_file("config/resources/vets_tucson.yml")
  end

  def vets_other_areas
    YAML.load_file("config/resources/vets_other_areas.yml")
  end

  def pharmacy
    YAML.load_file("config/resources/pharmacy.yml")
  end
end
