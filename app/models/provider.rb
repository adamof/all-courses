class Provider < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :courses
end
