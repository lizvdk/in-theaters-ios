class MovieScreen < PM::Screen
  attr_accessor :movie

  def on_load
    @layout = MovieLayout.new(root: self.view)
    @layout.movie = movie
    @layout.build
  end
end
