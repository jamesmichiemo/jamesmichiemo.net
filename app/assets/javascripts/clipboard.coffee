$ ->
  $('.article-button').on 'keydown', (event) ->
    if(event.which == 13) 
      #alert($(this).attr('title'))
      clipboard.copy($(this).attr('data-permalink')).then (->
        console.log 'Permalink has been copied to clipboard.'
        return
      ), (err) ->
        console.log 'copy failed', err
        return
  $('.article-button').on 'click', ->
   # alert($(this).attr('title'))
    clipboard.copy($(this).attr('data-permalink')).then (->
      console.log 'Permalink has been copied to clipboard.'
      return
    ), (err) ->
      console.log 'copy failed', err
      return
