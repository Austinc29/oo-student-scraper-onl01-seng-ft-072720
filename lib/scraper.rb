require 'open-uri'
require 'pry'

class Scraper
  

  def self.scrape_index_page(index_url) do 
    student = {}
    index_url = "https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"
    html = (open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
    scraped_students = Scraper.scrape_index_page(index_url)
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end