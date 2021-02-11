woah = document.getElementsByClassName('woah')[0]

window.onresize = ->
  ow = window.innerWidth
  nw = window.innerWidth
  if nw-ow > 100 or ow-nw > 100
    woah.style.opacity = 1
  return
