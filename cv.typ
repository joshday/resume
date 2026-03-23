#set document(title: "Josh Day CV", author: "Josh Day")
#set page(paper: "us-letter", margin: (x: 0.75in, y: 0.65in), numbering: "1")
#set text(font: "New Computer Modern", size: 10.5pt)
#set par(leading: 0.65em)

#let accent = rgb("#1a5276")

//-----------------------------------------------------------------------------# Helpers

#let section(title) = {
  v(0.6em)
  text(size: 11.5pt, weight: "bold", fill: accent, upper(title))
  line(length: 100%, stroke: 0.5pt + accent)
  v(0.25em)
}

#let job(title, company, dates) = {
  grid(
    columns: (1fr, auto),
    [*#title* — #company],
    [#text(style: "italic", dates)]
  )
}

#let degree(label, school, year, note: none) = {
  grid(
    columns: (1fr, auto),
    [*#label* — #school#if note != none [ \ #text(style: "italic", size: 9.5pt, note)]],
    [#year]
  )
  v(0.15em)
}

#let pub(authors, year, title, venue, note: none) = {
  let byline = authors + " (" + str(year) + ")."
  block(above: 0.5em)[
    #byline #emph[#title]. #venue.#if note != none [ #text(style: "italic", note)]
  ]
}

#let grant(title, agency, role, dates, amount: none) = {
  grid(
    columns: (1fr, auto),
    [*#title* \ #agency | #text(style: "italic", role)#if amount != none [| #amount]],
    [#text(style: "italic", dates)]
  )
  v(0.2em)
}

//-----------------------------------------------------------------------------# Header

#align(center)[
  #text(size: 24pt, weight: "bold", fill: accent)[Josh Day, PhD]
  #v(0.25em)
  #text(size: 11pt, style: "italic")[R&D Data Scientist / Technical Software Engineer]
  #v(0.35em)
  #text(size: 9.5pt)[
    763-458-9630 |
    #link("mailto:emailjoshday@gmail.com")[emailjoshday\@gmail.com] |
    #link("https://github.com/joshday")[github.com/joshday] |
    #link("https://heyjoshday.com")[heyjoshday.com] |
    #link("https://www.juliafordatascience.com")[juliafordatascience.com]
  ]
]

//-----------------------------------------------------------------------------# Education

#section("Education")

#degree("PhD, Statistics", "NC State University", "2018", note: "Dissertation: ")
#degree("MS, Statistics", "NC State University", "2014")
#degree("BS, Mathematics & Statistics", "Winona State University", "2012")
#degree("BA, Economics & Music", "Winona State University", "2009")

//-----------------------------------------------------------------------------# Professional Positions

#section("Professional Positions")

#job("Director of Software Engineering", "Rallypoint One", "November 2025 – Present")
#list(
  [Principal Investigator for federally funded programs (NSF, ONR)],
  [Lead engineering teams delivering scientific computing solutions for government R&D],
)

#v(0.3em)

#job("Senior Research Scientist", "JuliaHub", "October 2017 – October 2025")
#list(
  [Developed technical software for large government projects (DARPA, Air Force Multi-Domain Test Force, In-Q-Tel work programs)],
  [Provided internal/external consulting on statistics and data science],
  [Created and maintained high-impact open-source Julia packages],
  [Creator of the Julia for Data Science newsletter],
)

#v(0.3em)

#job("Data Scientist II", "MaxPoint / Valassis Digital", "May 2015 – Aug 2015; Aug 2019 – Oct 2019")
#list(
  [Developed online algorithms for logistic regression and survival analysis models],
)

#v(0.3em)

#job("Statistical Development Tester", "SAS/JMP", "May 2013 – May 2016")
#list(
  [Wrote test suites using the JMP scripting language (JSL) to validate statistical results],
  [Researched (and implemented in Julia) new methodologies being considered for JMP],
)

#v(0.3em)

#job("Statistics Consultant", "Winona State University", "January 2012 – August 2012")
#list(
  [Provided statistical consulting services to faculty and student researchers],
)

#v(0.3em)

#job("CRM Analytics Intern", "Best Buy", "May 2011 – September 2011")
#list(
  [Designed and analyzed A/B experiments for customer relationship management],
)

//-----------------------------------------------------------------------------# Grants and Funding

#section("Grants and Funding")

// Example:
// #grant("Project Title", "NSF", "Principal Investigator", "2025 – Present", amount: "$500,000")

//-----------------------------------------------------------------------------# Publications

#section("Publications")

// Journal Articles
// #pub("Day, J.", "2018", "Title", "Journal Name, vol(issue), pp–pp")

// Conference Proceedings
// #pub("Day, J.", "2017", "Title", "Proceedings of ...")

//-----------------------------------------------------------------------------# Talks and Presentations

#section("Talks and Presentations")

Slides and other materials available at #link("https://github.com/joshday/Talks")[github.com/joshday/Talks].

#v(0.3em)

*Invited Talks*

#list(
  [*Julia For Data Science* — Symposium on Data Science & Statistics 2024],
  [*Julia in Air Gapped Environments* — JuliaCon 2024 (with Avik Sengupta)],
  [*Julia for Computational Statisticians* — Joint Statistical Meetings 2023],
  [*Julia for Data Science and Statistical Computing* (Short Course) — Joint Statistical Meetings 2022],
  [*Using Julia on Large, Streaming Datasets* — Julia Computing Webinar 2020],
  [*Scalable Data Analysis with JuliaDB and OnlineStats* — JuliaCon 2018],
  [*SparseRegression.jl: Linear Models with Sparse Coefficients* — JuliaCon 2017],
  [*Online MM Algorithms for Machine Learning* — International Chinese Statistical Association Conference 2016],
  [*Julia for Modern Data Analysis* — PyData Carolinas 2016],
  [*OnlineStats.jl: Online Algorithms for Big and Streaming Data* — Joint Statistical Meetings 2016],
)

#v(0.4em)

*Seminar and Course Talks*

#list(
  [*Sorting Algorithms* — NC State, ST 758: Statistical Computing (Fall 2017)],
  [*Online Optimization* — NC State, ST 790: Advanced Computing (Spring 2015)],
)

//-----------------------------------------------------------------------------# Teaching

#section("Teaching")

*Course Instructor* — NC State University

#list(
  [ST 312: Introduction to Statistics II — Spring 2017, Spring 2015],
  [ST 311: Introduction to Statistics — Fall 2016, Fall 2014],
  [ST 350: Economic and Business Statistics — Fall 2012],
)

//-----------------------------------------------------------------------------# Software

#section("Open Source Software")

*Author and Maintainer* — #link("https://github.com/joshday?tab=repositories")[github.com/joshday] (100+ packages)

#v(0.3em)

Selected packages:

#list(
  [#link("https://github.com/joshday/OnlineStats.jl")[*OnlineStats.jl*] — Single-pass algorithms for statistics on streaming data],
  [#link("https://github.com/joshday/AverageShiftedHistograms.jl")[*AverageShiftedHistograms.jl*] — Fast, smooth density estimation],
  [#link("https://github.com/joshday/SparseRegression.jl")[*SparseRegression.jl*] — Penalized regression with sparse coefficients],
  [#link("https://github.com/joshday/PlotlyLight.jl")[*PlotlyLight.jl*] — Lightweight Plotly.js interface],
  [#link("https://github.com/joshday/XML.jl")[*XML.jl*] — Fast, minimal XML parsing and generation],
  [#link("https://github.com/joshday/Cobweb.jl")[*Cobweb.jl*] — HTML generation and browser interaction],
  [#link("https://github.com/joshday/SweepOperator.jl")[*SweepOperator.jl*] — Numerical sweep operator for linear algebra],
  [#link("https://github.com/joshday/KML.jl")[*KML.jl*] — KML file generation for geospatial data],
  [#link("https://github.com/joshday/QGIS.jl")[*QGIS.jl*] — Julia interface to QGIS],
  [#link("https://github.com/joshday/TokenIterators.jl")[*TokenIterators.jl*] — Fast string tokenization],
)

//-----------------------------------------------------------------------------# Service

#section("Service")

//-----------------------------------------------------------------------------# Awards and Honors

#section("Awards and Honors")

//-----------------------------------------------------------------------------# Skills

#section("Technical Skills")

*Languages and Frameworks:*
Julia, Python, R, React.js, HTML/CSS/JS, Plotly.js, Tailwind CSS, SQL, NoSQL, Swift and SwiftUI, Makie.jl, RESTful APIs, SciML

#v(0.4em)

*Research Interests:*
Online Algorithms, Numerical Optimization, MM Algorithms, Penalized Regression, Numerical Linear Algebra, Data Visualization, Signal Processing, Linear Models, Mixed Models, Design of Experiments, Time Series Analysis, Differential Equations, Modeling and Simulation, Ecology & Earth Systems, Geodesy
