$ ->
  # Get timezone
  if !sessionStorage.getItem('timezone')
    tz = jstz.determine() or 'UTC'
    sessionStorage.setItem 'timezone', tz.name()

  # Get UTC time
  moment_time = moment.utc()

  # Localize UTC time
  current_timezone = sessionStorage.getItem('timezone')
  timezone_time = moment_time.tz(current_timezone)
  formatted_time = timezone_time.format('h:mm a')

  # Display localized time
  $('header .watch h1').hide()
  $('header .watch').prepend('<h1 tabindex="2">'+formatted_time+'</h1>')
 
  $('.watch h1').on 'focus', (e) ->
    $('.watch h1 + img').show()
  $('.watch h1').on 'focusout', (e) ->
    $('.watch h1 + img').hide()


