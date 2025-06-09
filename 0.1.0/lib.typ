/*
  Copyright 2025, Universität Freiburg

  author: Jakob Haverkamp <jh1444@email.uni-freiburg.de>

  Template for simple worksheet
*/

#let conf(
  date: "",
  title: "",
  subject: "",
  doc,
) = {
  set text(
    lang: "de",
    size: 10.5pt,
    font: "Helvetica Neue",
  )

  set page(
    width: 210mm,
    height: 297mm,
    margin: (top: 15mm, bottom: 20mm, left: 23mm, right: 23mm),
    numbering: "1",
  )

  let freiburggray = rgb(154, 154, 154)


  block()[
    #box(
      image(
        "./assets/logo.png",
        height: 30pt,
      ),
    )
  ]
  align(left)[
    #block()[
      \
      Jakob Haverkamp \
      jh1444 - mat: 5932110 \
    ]
  ]
  align(right)[
    #block(below: 7%, above: -3%)[
      #text(size: 11pt)[
        *Freiburg, #date*
      ]
    ]
  ]

  align(center)[
    #block()[
      #strong[
        #text(16pt)[#subject]
      ]\
      #text(13pt)[
        #strong()[#title]
      ] \
    ]
  ]

  doc
}

