class HomeScreen < PM::Screen
  title 'In Theaters'

  def load_view
    @layout = HomeLayout.new
    self.view = @layout.view
  end
end
