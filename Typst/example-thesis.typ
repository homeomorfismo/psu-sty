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

#psu-copyright-page(
  author: "Jane Doe",
  graduation-year: "2025"
)

#psu-abstract[
  This dissertation presents a comprehensive study of advanced computational methods used in modern scientific research. The work explores novel algorithms and their applications across various scientific domains, demonstrating significant improvements in computational efficiency and accuracy.

  The research methodology combines theoretical analysis with practical implementation, resulting in contributions to both the theoretical understanding and practical application of computational methods in scientific contexts.
]

#psu-dedication[
  To my family and mentors who supported me throughout this journey.
]

#psu-acknowledgments[
  I would like to express my sincere gratitude to my advisor, Dr. John Smith, for his invaluable guidance and support throughout this research. I also thank my committee members for their insightful feedback and suggestions.

  Special thanks to my colleagues and friends who provided both technical assistance and moral support during the completion of this work.
]

#psu-table-of-contents()

#psu-list-of-figures()

#psu-list-of-tables()

#psu-start-body()

= Introduction

This chapter introduces the research problem and provides background information necessary to understand the scope and significance of this work.

== Research Motivation

The motivation for this research stems from the growing need for more efficient computational methods in scientific applications @johnson2022efficient.

== Research Questions

The primary research questions addressed in this dissertation are:

1. How can we improve the computational efficiency of existing algorithms?
2. What novel approaches can be developed to address current limitations?
3. How do these improvements impact real-world scientific applications?

= Literature Review

This chapter provides a comprehensive review of existing literature in the field of computational methods.
Recent work by @smith2023advanced highlights advances in this area.
Furthermore, @brown2024modern discuss relevant analytical approaches.

= Methodology

The methodology employed in this research combines both theoretical and experimental approaches.

== Theoretical Framework

The theoretical framework is based on established principles of computational complexity and algorithm design.

== Experimental Design

The experimental design includes both synthetic and real-world datasets to validate the proposed methods.

= Results

This chapter presents the results obtained from both theoretical analysis and experimental validation.

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

The results demonstrate significant improvements in both computational efficiency and accuracy when compared to existing methods @smith2023advanced, @johnson2022efficient.

= Conclusion

This dissertation has presented novel computational methods that address key limitations in existing approaches.

== Future Work

Future research directions include:
- Extension to larger datasets
- Application to additional scientific domains
- Integration with emerging technologies

#bibliography("example-ref.bib", style: "chicago-author-date")

#psu-appendix("A")[
  = Additional Experimental Data
  
  This appendix contains supplementary experimental data and detailed algorithm implementations...
]
