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
end
