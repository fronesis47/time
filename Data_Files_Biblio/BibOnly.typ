// Barebones pandoc for typst template (called with `-V`)
// This will format hanging indent biblio entries 
// when running pandoc directly on CSL JSON files

#let conf(
  title: none,
  subtitle: none,
  authors: (),
  keywords: (),
  date: none,
  abstract: none,
  abstract-title: none,
  lang: "en",
  region: "US",
  paper: "us-letter",
  margin: (x: 1in, y: 1in),
  cols: 1,
  font: (),
  fontsize: 12pt,
  sectionnumbering: none,
  pagenumbering: "1",
  doc,
) = {
  set page(
    paper: paper,
    margin: margin,
    numbering: pagenumbering,
  )
  
  set text(
    lang: lang,
    region: region,
    size: fontsize,
  )

  // Bibliography formatting
show <refs>: set par(
  hanging-indent: 0.4in,
  first-line-indent: 0in,
  justify: false,
)

  doc
}