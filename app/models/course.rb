class Course < ActiveRecord::Base
  attr_accessible :name, :url, :description, :university, :level
  belongs_to :provider
  belongs_to :category
end
