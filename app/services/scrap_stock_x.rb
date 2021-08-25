require 'open-uri'
require 'nokogiri'

class ScrapStockX < ApplicationService
  def call
    # byebug
    url = "https://www.hypeanalyzer.com/"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.card').first(5).each do |element|
      puts element.css(".card-body").css(".card-title").text.strip
      puts element.css(".card-body").css(".card-text").css(".text-success").css(".marketValue").text.strip
      # byebug
    end
  end
  # scrape = ScrapStockX.new
  # scrape.call
end
