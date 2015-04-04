class HomeLayout < MotionKit::Layout
  include HomeStyles
  def layout
    root :home do
      background_color rmq.color('000000')

      add UILabel, :app_title
    end
  end
end
