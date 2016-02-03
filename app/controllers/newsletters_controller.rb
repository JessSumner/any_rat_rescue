class NewslettersController < ApplicationController
  def index
    @flyers = NewsletterFinder.new.flyers
    @news = NewsletterFinder.new.news
  end
end
