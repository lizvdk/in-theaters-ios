class MoviesScreen < PM::TableScreen
  title "Now Playing"

  def table_data
      [{
        cells: Array(@movies)
      }]
  end

  def on_load
    RT.new.now do |response|
      @movies = response["movies"].map do |movie|
        {
          title: movie["title"],
        }
      end
      update_table_data
    end
  end
end
