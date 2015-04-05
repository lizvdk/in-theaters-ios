class Movie
  attr_accessor :title, :synopsis

  def initialize(attributes = {})
    if attributes.present?
      self.title = attributes["title"]
      self.synopsis = attributes["synopsis"]
    end
  end
end
