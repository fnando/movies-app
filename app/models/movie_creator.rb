require "fileutils"

class MovieCreator
  attr_reader :movie, :poster

  def initialize(movie, poster)
    @movie = movie
    @poster = poster
  end

  def process
    return unless [@poster.valid?, @movie.valid?].all?
    @movie.save && save_poster
  end

  def poster_path
    Rails.root.join("public/posters/#{movie.id}.jpg")
  end

  def save_poster
    FileUtils.cp poster.temp_path, poster_path
    true
  end
end
