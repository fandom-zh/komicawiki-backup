#!/bin/sh
jquery -e '
$("#bodyContent a").each((i, e) => {
    const r = $(e).attr("href")
    if (!r) return console.log("null-anchor", $.html(e))
    if (/action=edit/.test(r)) return
    const first = r.charAt(0)
    if (first == "#" || first == "?") return
    console.log(r)
})
""
' "$@"
