$ ->
  document.onkeydown = (e) ->
    switch e.keyCode
      # left arrow
      when 37
        $.tabPrev() unless $("input,textarea").is(":focus") 
      # right arrow
      when 39
        $.tabNext() unless $("input,textarea").is(":focus")

