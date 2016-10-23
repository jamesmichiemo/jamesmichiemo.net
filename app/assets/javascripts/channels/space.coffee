App.space = App.cable.subscriptions.create "SpaceChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $('#messages').prepend data['message']

  curate: (message) ->
    @perform 'curate', message: message

$(document).on 'keypress', '[data-behavior~=space_curator]', (event) ->
  if event.keyCode is 13 # return = send
    App.space.curate event.target.value + '</br>'
    event.target.value = ''
    event.preventDefault()
