class RT
  API_KEY = ENV['RT_API_KEY']
  NOW_URL = "http://api.rottentomatoes.com/api/public/v1.0/lists/movies/in_theaters.json?apikey=#{API_KEY}"

  def now(&callback)
    AFMotion::JSON.get(NOW_URL) do |result|
      if result.success?
        callback.call result.object
      else
        callback.call nil
      end
    end
  end
end
