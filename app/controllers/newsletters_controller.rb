class NewslettersController < ApplicationController
  def index
    @flyers = flyers
    @news = news
  end

  private

  def news
    newsletters_with_file_extension("news").map do |newsletter|
      newsletter.gsub(/\.pdf/, "")
    end
  end

  def flyers
    newsletters_with_file_extension("monthly_flyers").map do |newsletter|
      newsletter.gsub(/\.pdf/, "")
    end
  end

  def newsletters_with_file_extension(file_name)
    unsorted_newsletters(file_name).sort do |date_1, date_2|
      Date.parse("1-#{date_2}") <=> Date.parse("1-#{date_1}")
    end
  end

  def unsorted_newsletters(file_name)
    file_contents(file_name).select { |newsletter| newsletter =~ /.*\.pdf/i }
  end

  def file_contents(file_name)
    Dir.entries("app/assets/newsletters/#{file_name}")
  end
end
