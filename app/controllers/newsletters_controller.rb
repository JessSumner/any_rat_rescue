class NewslettersController < ApplicationController
  FLYERS = %w(
    jan-16.pdf
    dec-15.pdf
    nov-15.pdf
    oct-15.pdf
    sep-15.pdf
    aug-15.pdf
    jul-15.pdf
    jun-15.pdf
    may-15.pdf
    mar-15.pdf
    feb-15.pdf
    jan-15.pdf
    dec-14.pdf
  ).freeze

  def index
    @flyers = NewslettersController::FLYERS
  end

  def show
  end
end
