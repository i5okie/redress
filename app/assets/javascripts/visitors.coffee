jQuery ($) ->
  $(document).ready ->
    unless $('dl.tabs dd').hasClass('active')
      setActive()

  $('dl.tabs dd').on('click', setActive)

setActive = (item) ->
  $('dl.tabs dd').removeClass('active')
  $('div.tabs-content div').removeClass('active')
  if ! item
    $('dl.tabs dd').first().addClass('active')
    $('div.tabs-content div').first().addClass('active')
  else
    $(item).addClass('active')