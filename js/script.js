var chinese, email, mobile, ow, ua, weibo, woah;

ua = navigator.userAgent;

mobile = ua.match(/Mobile|Android|iPhone|iPad|iPod/) !== null;

chinese = navigator.language.toLowerCase().indexOf('zh') > -1;

weibo = document.getElementsByClassName('weibo')[0];

email = document.getElementsByClassName('email')[0];

ow = window.innerWidth;

woah = document.getElementsByClassName('woah')[0];

if (!chinese) {
  weibo.style.display = 'none';
}

email.onclick = function() {
  var range, selection;
  if (document.body.createTextRange) {
    range = document.body.createTextRange();
    range.moveToElementText(this);
    range.select();
  } else if (window.getSelection) {
    selection = window.getSelection();
    range = document.createRange();
    range.selectNodeContents(this);
    selection.removeAllRanges();
    selection.addRange(range);
  }
  if (mobile) {
    location.href = "mailto:ray@rayps.com";
  }
};

window.onresize = function() {
  var nw;
  nw = window.innerWidth;
  if (nw - ow > 100 || ow - nw > 100) {
    woah.style.color = "black";
  }
};
