module HomeStyles

  def app_title_style
    text 'In Theaters'
    text_color rmq.color('ffffff')
    font UIFont.fontWithName('Helvetica Neue', size: 42)
    constraints do
      center_x.equals(:superview)
      center_y.equals(:superview).times(0.80)
    end
  end

  def button_container_style
    constraints do
      center_x.equals(:superview)
      center_y.equals(:superview).times(1.60)
      width.equals(:superview).times(0.75)
      height.equals(:superview).times(0.15)
    end
  end

  def browse_movies_button_style
    title 'Browse Movies'
    font UIFont.fontWithName('Helvetica Neue', size: 24)

    background_color rmq.color('ff355e')

    constraints do
      center_x.equals(:superview)
      center_y.equals(:superview)
      width.equals(:superview)
      height.equals(:superview)
    end

    layer do
      corner_radius 7.0
    end
  end
end
