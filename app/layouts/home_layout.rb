class HomeLayout < MotionKit::Layout
  include HomeStyles
  view :browse_movies_button

  def layout
    root :home do
      background_color rmq.color('000000')

      add UILabel, :app_title
      add UIView, :button_container do
        @browse_movies_button = add UIButton, :browse_movies_button
      end
    end
  end
end
