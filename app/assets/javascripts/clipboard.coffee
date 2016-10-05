$ ->
  up.on 'click', '.article-button', (event) ->
    clipboard.copy($(this).attr('data-permalink')).then (->
      console.log 'Permalink has been copied to clipboard.'
      return
    ), (err) ->
      console.log 'copy failed', err
      return
  up.on 'keydown', '.article-button', (event) ->
    if(event.which == 13) 
      clipboard.copy($(this).attr('data-permalink')).then (->
        console.log 'Permalink has been copied to clipboard.'
        return
      ), (err) ->
        console.log 'copy failed', err
        return

