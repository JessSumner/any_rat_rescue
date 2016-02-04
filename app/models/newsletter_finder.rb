class NewsletterFinder
  include Enumerable

  delegate :each, to: :newsletters_list

  def initialize(type)
    @type = type
  end

  private

  def newsletters_list
    @newsletters_list ||= newsletters_with_file_extension.map do |newsletter|
      newsletter.gsub(/\.pdf/, "")
    end
  end

  def newsletters_with_file_extension
    unsorted_newsletters.sort do |date_1, date_2|
      Date.parse("1-#{date_2}") <=> Date.parse("1-#{date_1}")
    end
  end

  def unsorted_newsletters
    file_contents.select { |newsletter| newsletter =~ /.*\.pdf/i }
  end

  def file_contents
    Dir.entries("app/assets/newsletters/#{@type}")
  end
end
