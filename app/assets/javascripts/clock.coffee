$ ->
  # Get timezone
  if !sessionStorage.getItem('timezone')
    tz = jstz.determine() or 'UTC'
    sessionStorage.setItem 'timezone', tz.name()

  # Get UTC time
  utc_clock = $('header div').text()
  moment_time = moment(utc_clock)

  # Localize UTC time
  current_timezone = sessionStorage.getItem('timezone')
  timezone_time = moment_time.tz(current_timezone)
  formatted_time = timezone_time.format('h:mm a')

  # Display localized time
  $('header h1').hide()
  $('header').append('<h1 tabindex="2">'+formatted_time+'</h1>')

