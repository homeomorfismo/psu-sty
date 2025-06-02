#import "psu-colors.typ": *
#import "psu-beamer.typ": *

#show: psu-theme.with(
  title: "Sample Presentation",
  author: "Your Name",
  institute: "Portland State University",
  date: datetime.today().display(),
)

// Title slide
#psu-title-slide(
  title: "Sample PSU Presentation",
  subtitle: "Using Typst Theme",
  author: "Your Name",
  institute: "Portland State University", 
  date: datetime.today().display(),
  left-logo: image("psu-logo.png", width: logo-size), // If you have logo files
)

#pagebreak()

= Table of Contents

#psu-outline()

#pagebreak()

= Introduction

This is a sample slide with a frame title.

- First bullet point
- Second bullet point  
- Third bullet point

#pagebreak()

= Blocks and Alerts

#psu-block(title: "Information Block")[
  This is a regular information block using PSU stone color.
]

#v(1em)

#psu-alert-block(title: "Alert Block")[
  This is an alert block using PSU orange color.
]
