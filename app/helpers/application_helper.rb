module ApplicationHelper

  def time_submitted(datetime)
    datetime.localtime.strftime("%l:%M %p")
  end

  def date_submitted(datetime)
    datetime.localtime.strftime("%d %b %Y")
  end
end
