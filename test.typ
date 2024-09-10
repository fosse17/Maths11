#let c = counter("mycounter")

#let my =(title,it) => {
  c.step()
  block(fill: rgb("#867bad32"),
  width: 100%,
  below: 0pt,
  radius: (top :10pt),
  inset :10pt,
  outset:0pt,[*#title #c.display()*])
  block(fill: rgb("#770a7d32"),
  width: 100%,
  
  inset: 10pt,
  radius: (bottom :10pt),
  [#it])
};

#my("Hello")[je suis une siqdhfpizuf]

#my("Hello")[je suis une siqdhfpizuf]