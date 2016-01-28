class NewslettersController < ApplicationController
  FLYERS = %w(
    jan-16
    dec-15
    nov-15
    oct-15
    sep-15
    aug-15
    jul-15
    jun-15
    may-15
    mar-15
    feb-15
    jan-15
    dec-14
  ).freeze

  def index
    @flyers = NewslettersController::FLYERS
  end
end
