class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :categories_courses, dependent: :destroy, inverse_of: :category
  has_many :courses, through: :categories_courses
end
