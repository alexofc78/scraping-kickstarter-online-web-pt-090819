require 'pry'
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
 #   binding.pry
    title = project.css("h2 a").text
    projects[title]={
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcard_blurb").text,
      :location => project.css("span.location-name").text,
      :percent_funded => project.css("li.first.funded strong").text.gsub("%","").to_i
    }

end
  projects
end

create_project_hash

# projects: kickstarter.css("li.project.grid_4")