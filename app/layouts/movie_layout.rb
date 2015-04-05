class MovieLayout < MotionKit::Layout
  attr_accessor :movie

  def layout
    root :movie do
      background_color rmq.color('000000')
      add UILabel, :title
      add UILabel, :synopsis
    end
  end

  def title_style
    text movie.title
    text_color rmq.color('ffffff')
    text_alignment NSTextAlignmentCenter
    constraints do
      center_x.equals(:superview)
      center_y.equals(:superview).times(0.80)
      width.equals(:superview).times(0.75)
      height.equals(:superview).times(0.5)
    end
  end

  def synopsis_style
    text movie.synopsis
    text_color rmq.color('ffffff')
    constraints do
      center_x.equals(:superview)
      center_y.equals(:superview)
      width.equals(:superview).times(0.75)
      height.equals(:superview).times(0.5)
    end
  end
end
