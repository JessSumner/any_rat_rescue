class NewslettersController < ApplicationController
  def index
    @flyers = flyers
    @news = news
  end

  private

  def flyers
    flyers_with_file_extension.map do |flyer|
      flyer.gsub(/\.pdf/,"")
    end
  end

  def flyers_with_file_extension
    unsorted_flyers.sort do |date_1, date_2 |
      Date.parse("1-#{date_2}") <=> Date.parse("1-#{date_1}")
    end
  end

  def unsorted_flyers
    monthly_flyers_contents.select{ |flyer| flyer =~ /.*\.pdf/i }
  end

  def monthly_flyers_contents
    Dir.entries("app/assets/newsletters/monthly_flyers")
  end

  def news
    news_with_file_extension.map do |news|
      news.gsub(/\.pdf/,"")
    end
  end

  def news_with_file_extension
    unsorted_news.sort do |date_1, date_2 |
      Date.parse("1-#{date_2}") <=> Date.parse("1-#{date_1}")
    end
  end

  def unsorted_news
    news_contents.select{ |news| news =~ /.*\.pdf/i }
  end

  def news_contents
    Dir.entries("app/assets/newsletters/news")
  end
end
