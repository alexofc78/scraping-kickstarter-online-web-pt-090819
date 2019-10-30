require 'pry'
require 'nokogiri'

def create_project_hash
  
  html = File.read('fixtures/kickstarter.html')
 
  kickstarter = Nokogiri::HTML(html)
  kickstarter.css("li.project.grid_4").each do |project|
#    binding.pry
end
  
 # binding.pry
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")