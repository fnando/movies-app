class Poster
  include ActiveModel::Validations

  CONTENT_TYPE = %w[image/jpeg]

  attr_accessor :file

  validates_presence_of :file
  validates_inclusion_of :content_type, :in => CONTENT_TYPE

  def initialize(file)
    @file = file
  end

  def content_type
    file && file.content_type
  end

  def temp_path
    file && file.tempfile.path
  end
end
