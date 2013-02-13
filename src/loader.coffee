###
This script is the master controller, it kicks everything off
###

# Load CSS from a remote URL
load_css = (url) ->
    style = document.createElement("link")
    style.setAttribute("rel", "stylesheet")
    style.setAttribute("type", "text/css")
    style.setAttribute("href", url)
    document.getElementsByTagName("head")[0].appendChild(style)

if window.SUBTLEPATTERNS
    load_css "http://bradjasper.com/subtle-patterns-bookmarklet/static/css/bookmarklet.css?cb=#{Math.random()}"
    #load_css "http://127.0.0.1:8000/static/css/bookmarklet.css?cb=#{Math.random()}"
    overlay = new SubtlePatternsBookmarklet(SUBTLEPATTERNS)
    overlay.setup()
else
    alert("Something went wrong, I can't find the SubtlePatterns. Please e-mail bjasper@gmail.com")
