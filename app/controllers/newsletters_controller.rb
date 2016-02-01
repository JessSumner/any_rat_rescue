class NewslettersController < ApplicationController
  def index
    @flyers = flyers
  end

  private

  def flyers
    flyers_with_file_extension.map do |flyer|
      flyer.gsub(/\.pdf/,"")
    end
  end

  def flyers_with_file_extension
    unsorted_flyers.sort do |date_1, date_2 |
      Date.parse("1-#{date_1}") <=> Date.parse("1-#{date_2}")
    end
  end

  def unsorted_flyers
    monthly_flyers_contents.select{ |flyer| flyer =~ /.*\.pdf/i }
  end

  def monthly_flyers_contents
    Dir.entries("app/assets/newsletters/monthly_flyers")
  end
end
