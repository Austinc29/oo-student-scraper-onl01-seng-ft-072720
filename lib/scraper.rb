require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    arr = []
    
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
    doc.css('.student-card').each do |card|
      # hash = {}
      # hash[key] = value
      hash = {
        profile_url: card.css('a').attr('href').value,
        name: card.css('.student-name').text,
        location: card.css('.student-location').text
      }
      arr << hash
    end
    
    arr
  end
  
  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html))
    
    link = doc.css('.social-icon-container a').map do |node|
      node.attr('href')
    end

end