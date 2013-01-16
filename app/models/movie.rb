class Movie < ActiveRecord::Base
  attr_accessible :title, :summary, :release_year, :poster_url
  validates_presence_of :title, :summary, :release_year, :poster_url
end
