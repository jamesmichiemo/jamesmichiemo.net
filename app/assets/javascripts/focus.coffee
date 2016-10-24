$ ->
  up.on 'click', '#toggle:not(:checked)', (event) ->
    $('header h1').focus()
  up.on 'click', '#toggle:checked', (event) ->
    $('#chat').focus()

