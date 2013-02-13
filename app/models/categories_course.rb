class CategoriesCourse < ActiveRecord::Base
  belongs_to :course
  belongs_to :category

  validates :course, presence: true
  validates :category, presence: true
end