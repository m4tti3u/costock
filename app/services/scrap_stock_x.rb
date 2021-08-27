require 'open-uri'
require 'nokogiri'

class ScrapStockX < ApplicationService
  def call
    # byebug
    url = "https://www.hypeanalyzer.com/"
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    html_doc.search('.card').first(5).each do |element|
      # puts element
      puts element.css(".card-body").css(".card-title").text.strip
      puts element.css(".card-body").css(".card-text").css(".text-success").css(".marketValue").text.strip
      if element.attribute("onclick").to_s.match?(/window.open\("(.+)","_self"\);/)
        match_data = element.attribute("onclick").to_s.match(/window.open\("(.+)","_self"\);/)
        good_url = match_data[1]
        url = "https://www.hypeanalyzer.com#{good_url}"
        html_file = URI.open(url).read
        html_doc = Nokogiri::HTML(html_file)
        # puts html_doc.search('td')[2]
        # puts html_doc.search('td')[3]
      end
    end
  end
end
