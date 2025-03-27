#import "summify.typ": *
#import "colors.typ": *

//#show math.equation: set text(font: "Fira Math", size: 12pt)

#set page(
  paper: "iso-b7",
  header: rect(fill: aqua)[Header],
  footer: [von Eva Hölzl],
  number-align: center,
)

#show: summify.with(
  title: "Einführung in die KI Formelblatt",
  paper: "a4",
  flipped: true,
)

#set text(size: 9.5pt)
#let green = green.darken(20%)


#include "content.typ"
#include "arrangement.typ"
