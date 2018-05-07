ua = navigator.userAgent

mobile = ua.match(/Mobile|Android|iPhone|iPad|iPod/) isnt null

chinese = navigator.language.toLowerCase().indexOf('zh') > -1

weibo = document.getElementsByClassName('weibo')[0]
email = document.getElementsByClassName('email')[0]

ow = window.innerWidth
woah = document.getElementsByClassName('woah')[0]

weibo.style.display = 'none' unless chinese

email.onclick = ->
    if document.body.createTextRange
        range = document.body.createTextRange()
        range.moveToElementText this
        range.select()
    else if window.getSelection
        selection = window.getSelection()
        range = document.createRange()
        range.selectNodeContents this
        selection.removeAllRanges()
        selection.addRange range

    location.href = "mailto:ray@rayps.com" if mobile
    return




window.onresize = ->
  nw = window.innerWidth

  if nw-ow > 100 or ow-nw > 100
    woah.style.color = "black"

  return
