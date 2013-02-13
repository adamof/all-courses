class Course < ActiveRecord::Base
  attr_accessible :name, :url, :description, :university, :level
  belongs_to :provider
  has_many :categories_courses, dependent: :destroy, inverse_of: :course
  has_many :categories, through: :categories_courses
end
