require 'open-uri'
require 'json'

module Coursera
  def fetch_courses
    JSON.parse(open(Settings.coursera.url).read)
  end
  def update_courses
    coursera_id = Provider.where(name: "Coursera")
    fetch_courses.each do |c|
      unless Course.where(provider_id: coursera_id).find_by_name(c["name"])
        course = Course.new name: c["name"],
                            url: c["social_link"],
                            description: c["short_description"],
                            university: c["universities"].first["name"]
        course.provider_id = coursera_id
        course.categories = c["categories"].map{ |r| Category.find_or_create_by_name(r["name"]) }
        course.save!
      end
    end
  end
end