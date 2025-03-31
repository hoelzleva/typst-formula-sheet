#import "summify.typ": *

//#show math.equation: set text(font: "Fira Math", size: 12pt)

#set page(footer: [= Eva Hölzl])

#show: summify.with(
  paper: "a4",
  flipped: true,
)


#set text(size: 7pt)

#include "content.typ"
#include "arrangement.typ"
