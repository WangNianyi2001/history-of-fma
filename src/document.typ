#import "preambles.typ": *

#let title = "未来媒体协会史"
#let author = "王念一"

#show: content => document(content, title: title)

#coverpage(title: title, author: author)
#pagebreak()

#include "subdocuments/preface.typ"
#pagebreak()

#include "subdocuments/reigns.typ"
#pagebreak()

#include "subdocuments/stories.typ"
#pagebreak()

#include "subdocuments/people.typ"