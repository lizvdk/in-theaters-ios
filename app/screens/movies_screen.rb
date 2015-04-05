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
        @movie = Movie.new(movie)

        {
          title: @movie.title,
          action: :show_movie,
          arguments: @movie
        }
      end
      update_table_data
    end
  end

  def show_movie(movie)
    puts movie.title
  end
end
