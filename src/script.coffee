
ow = window.innerWidth
window.onresize = ->
  woah = document.getElementsByClassName('woah')[0]
  nw = window.innerWidth
  if nw-ow > 100 or ow-nw > 100
    woah.style.opacity = 1
  return

if (location.host isnt 'ray.omg.lol')
  document.getElementsByClassName('omglol')[0].style.display = 'inline-block'

email_address = if (location.host is 'ray.omg.lol')
then 'ray' + '@' + 'omg.lol'
else 'ray' + '@' + 'rayps.com'
email_element = document.getElementsByClassName('email')[0]
email_span = document.createElement('span')
email_span.appendChild(document.createTextNode(email_address))
email_element.appendChild(email_span)

email_span.addEventListener 'click', ->
  selection = window.getSelection()
  range = document.createRange()
  range.selectNodeContents(email_span)
  selection.removeAllRanges()
  selection.addRange(range)