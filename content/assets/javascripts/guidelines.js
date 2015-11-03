;(function() {
  var tops = {}
  var nav = document.getElementById("toc").getElementsByTagName("nav")[0]
  var links = document.getElementById("toc").getElementsByTagName("a")

  var update = updateTops.bind(null, tops, links)
  window.addEventListener("resize", update)
  update()

  var scroll = updateScroll.bind(null, nav, tops, links)
  window.addEventListener("scroll", scroll)
  scroll()
})()

function updateTops(tops, els) {
  for (var i = 0, l = els.length; i < l; ++i) {
    var id = els[i].getAttribute("href").slice(1)
    tops[id] = document.getElementById(id).offsetTop
  }
}

function updateScroll(nav, tops, links) {
  var y = window.pageYOffset

  nav.style.position = y >= tops.authentication ? "fixed" : "static"

  var section, i = links.length
  if (nav.style.position == "fixed") while (i--) {
    if (tops[links[i].getAttribute("href").slice(1)] > y) continue
    section = links[i]
    break
  }

  i = links.length
  while (i--) links[i].className = section === links[i] ? "selected" : ""
}
