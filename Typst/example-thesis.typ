#import "psu-thesis.typ": *

#show: psu-thesis.with(
  title: "A Comprehensive Study of Advanced Computational Methods in Modern Scientific Research",
  author: "Jane Doe",
  thesis-type: "dissertation",
  degree: "Doctor of Philosophy",
  department: "Computer Science",
  graduation-month: "June",
  graduation-year: "2025",
  chair: "Dr. John Smith",
  member-one: "Dr. Sarah Johnson",
  member-two: "Dr. Michael Brown",
  member-three: "Dr. Lisa Wilson",
  document-format: "monograph"
)

// Title page
#psu-title-page(
  title: "A Comprehensive Study of Advanced Computational Methods in Modern Scientific Research",
  author: "Jane Doe",
  thesis-type: "dissertation",
  degree: "Doctor of Philosophy", 
  department: "Computer Science",
  graduation-month: "June",
  graduation-year: "2025",
  chair: "Dr. John Smith",
  member-one: "Dr. Sarah Johnson",
  member-two: "Dr. Michael Brown",
  member-three: "Dr. Lisa Wilson"
)

// Copyright page
#psu-copyright-page(
  author: "Jane Doe",
  graduation-year: "2025"
)

// Abstract
#psu-abstract[
  This dissertation presents a comprehensive study of advanced computational methods used in modern scientific research. The work explores novel algorithms and their applications across various scientific domains, demonstrating significant improvements in computational efficiency and accuracy.

  The research methodology combines theoretical analysis with practical implementation, resulting in contributions to both the theoretical understanding and practical application of computational methods in scientific contexts.
]

// Dedication
#psu-dedication[
  To my family and mentors who supported me throughout this journey.
]

// Acknowledgments
#psu-acknowledgments[
  I would like to express my sincere gratitude to my advisor, Dr. John Smith, for his invaluable guidance and support throughout this research. I also thank my committee members for their insightful feedback and suggestions.

  Special thanks to my colleagues and friends who provided both technical assistance and moral support during the completion of this work.
]

// Table of contents
#psu-table-of-contents()

// List of figures
#psu-list-of-figures()

// List of tables  
#psu-list-of-tables()

// Start main body
#psu-start-body()

= Introduction

This chapter introduces the research problem and provides background information necessary to understand the scope and significance of this work.

== Research Motivation

The motivation for this research stems from the growing need for more efficient computational methods in scientific applications...

== Research Questions

The primary research questions addressed in this dissertation are:

1. How can we improve the computational efficiency of existing algorithms?
2. What novel approaches can be developed to address current limitations?
3. How do these improvements impact real-world scientific applications?

= Literature Review

This chapter provides a comprehensive review of existing literature in the field of computational methods...

= Methodology

The methodology employed in this research combines both theoretical and experimental approaches...

== Theoretical Framework

The theoretical framework is based on established principles of computational complexity and algorithm design...

== Experimental Design

The experimental design includes both synthetic and real-world datasets to validate the proposed methods...

= Results

This chapter presents the results obtained from both theoretical analysis and experimental validation...

#figure(
  table(
    columns: 3,
    [Algorithm], [Runtime (ms)], [Accuracy (%)],
    [Method A], [150], [92.5],
    [Method B], [85], [94.2],
    [Proposed], [65], [96.1]
  ),
  caption: [Comparison of computational methods performance]
)

= Discussion

The results demonstrate significant improvements in both computational efficiency and accuracy...

= Conclusion

This dissertation has presented novel computational methods that address key limitations in existing approaches...

== Future Work

Future research directions include:
- Extension to larger datasets
- Application to additional scientific domains
- Integration with emerging technologies

#psu-references[
  [1] Smith, J. (2023). Advanced Computational Methods. *Journal of Computer Science*, 45(2), 123-145.

  [2] Johnson, S. (2022). Efficient Algorithms for Scientific Computing. *Computational Review*, 38(4), 67-89.

  [3] Brown, M., & Wilson, L. (2024). Modern Approaches to Data Analysis. *Scientific Computing Quarterly*, 12(1), 234-256.
]

#psu-appendix("A")[
  = Additional Experimental Data
  
  This appendix contains supplementary experimental data and detailed algorithm implementations...
]
