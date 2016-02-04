class NewslettersController < ApplicationController
  def index
    @flyers = NewsletterFinder.new("monthly_flyers")
    @news = NewsletterFinder.new("news_documents")
  end
end
