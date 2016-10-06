$ ->
  document.onkeydown = (e) ->
    switch e.keyCode
      # left arrow
      when 37
        $.tabPrev()
      # right arrow
      when 39
        $.tabNext()
