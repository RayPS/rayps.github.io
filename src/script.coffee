
ow = window.innerWidth
window.onresize = ->
  woah = document.getElementsByClassName('woah')[0]
  nw = window.innerWidth
  if nw-ow > 100 or ow-nw > 100
    woah.style.opacity = 1
  return
