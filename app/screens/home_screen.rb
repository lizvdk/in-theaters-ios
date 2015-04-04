class HomeScreen < PM::Screen
  title 'In Theaters'

  def load_view
    @layout = HomeLayout.new
    self.view = @layout.view
    @browse_movies_button = @layout.browse_movies_button
  end

  def viewDidLoad
    rmq(@browse_movies_button).on(:touch) { open MoviesScreen.new }
  end
end
