$ ->
  getMax = ->
    $(document).height() - $(window).height()

  getValue = ->
    $(window).scrollTop()

  if 'max' of document.createElement('progress')
    # Browser supports progress element
    limitBar = $('progress')
    # Set the Max attr for the first time
    limitBar.attr max: getMax()
    $(document).on 'scroll', ->
      # On scroll only Value attr needs to be calculated
      limitBar.attr
        max: getMax()
        value: getValue()
      return
  else
    limitBar = $('.limit-bar')
    max = getMax()
    value = undefined
    width = undefined

    getWidth = ->
      # Calculate width in percentage
      value = getValue()
      width = value / max * 100
      width = width + '%'
      width

    setWidth = ->
      limitBar.css width: getWidth()
      return

    $(document).on 'scroll', setWidth
    return


