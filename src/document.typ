#import "preambles.typ": *

#let title = "未来媒体协会史"
#let author = "王念一"

#show: content => document(content, title: title)

#coverpage(title: title, author: author)
#pagebreak()

#outline()
#pagebreak()

#include "subdocuments/前言.typ"
#pagebreak()

#include "subdocuments/历志.typ"
#pagebreak()

#include "subdocuments/杂史.typ"
#pagebreak()

#include "subdocuments/列传.typ"