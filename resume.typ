#set document(title: "Josh Day Resume", author: "Josh Day")
#set page(paper: "us-letter", margin: (x: 0.65in, y: 0.6in))
#set text(font: "New Computer Modern", size: 10.5pt)
#set par(leading: 0.65em)

#let accent = rgb("#1a5276")

//-----------------------------------------------------------------------------# Helpers

#let section(title) = {
  v(0.5em)
  text(size: 11.5pt, weight: "bold", fill: accent, upper(title))
  line(length: 100%, stroke: 0.5pt + accent)
  v(0.2em)
}

#let job(title, company, dates) = {
  grid(
    columns: (1fr, auto),
    [*#title* — #company],
    [#text(style: "italic", dates)]
  )
}

#let degree(label, school, year) = {
  grid(
    columns: (1fr, auto),
    [*#label* — #school],
    [#year]
  )
}

//-----------------------------------------------------------------------------# Header

#align(center)[
  #text(size: 22pt, weight: "bold", fill: accent)[Josh Day, PhD]
  #v(0.2em)
  #text(size: 11pt, style: "italic")[R&D Data Scientist / Technical Software Engineer]
  #v(0.3em)
  #text(size: 9.5pt)[
    763-458-9630 |
    #link("mailto:emailjoshday@gmail.com")[emailjoshday\@gmail.com] |
    #link("https://github.com/joshday")[github.com/joshday] |
    #link("https://heyjoshday.com")[heyjoshday.com] |
    #link("https://www.juliafordatascience.com")[juliafordatascience.com]
  ]
]

#v(0.5em)

Innovative and results-driven software engineer, data scientist, and open-source contributor specializing in high-performance computing, data science, and Julia programming. My niche in mathematical and scientific computing enables me to solve complex problems and quickly translate whiteboard math into efficient, scalable programs.

//-----------------------------------------------------------------------------# Technical Experience

#section("Technical Experience")

*Languages and Frameworks:*
Julia, Python, R, React.js, Vanilla HTML/CSS/JS, Plotly.js, Tailwind CSS, SQL, NoSQL, Swift and SwiftUI, Makie.jl, RESTful APIs, SciML

#v(0.4em)

*Open Source Packages I'm the Author Of:*
#link("https://github.com/joshday/OnlineStats.jl")[OnlineStats.jl],
#link("https://github.com/joshday/PlotlyLight.jl")[PlotlyLight.jl],
#link("https://github.com/joshday/AverageShiftedHistograms.jl")[AverageShiftedHistograms.jl],
#link("https://github.com/joshday/SparseRegression.jl")[SparseRegression.jl],
#link("https://github.com/joshday/XML.jl")[XML.jl],
#link("https://github.com/joshday/KML.jl")[KML.jl],
#link("https://github.com/joshday/TokenIterators.jl")[TokenIterators.jl],
#link("https://github.com/joshday/Cobweb.jl")[Cobweb.jl],
#link("https://github.com/joshday/QGIS.jl")[QGIS.jl],
#link("https://github.com/joshday/SweepOperator.jl")[SweepOperator.jl],
and #link("https://github.com/joshday?tab=repositories")[100+ more on GitHub]

#v(0.4em)

*Proprietary Development:*
#list(
  [Framework + web app for correlating asynchronous time series data],
  [Framework + web app for data association/visualization of asynchronous spatio-temporal radar tracks],
  [One Click Tuner: Chromatic musical instrument tuner for iOS],
  [TrendSpot: Keyword research tool],
)

//-----------------------------------------------------------------------------# Work Experience

#section("Relevant Work Experience")

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

#job("CRM Analytics Intern", "Best Buy", "May 2011 – September 2011")
#list(
  [Designed and analyzed A/B experiments for customer relationship management],
)

#v(0.3em)

#job("Statistics Consultant", "Winona State University", "January 2012 – August 2012")
#list(
  [Provided statistical consulting services to faculty and student researchers],
)

//-----------------------------------------------------------------------------# Education

#section("Education")

#degree("PhD, Statistics", "NC State University", "2018")
#degree("MS, Statistics", "NC State University", "2014")
#degree("BS, Mathematics & Statistics", "Winona State University", "2012")
#degree("BA, Economics & Music", "Winona State University", "2009")

//-----------------------------------------------------------------------------# Talks

#section("Selected Talks")

Slides and other materials available at #link("https://github.com/joshday/Talks")[github.com/joshday/Talks].

#v(0.3em)

#list(
  [*Julia For Data Science* — Symposium on Data Science & Statistics 2024],
  [*Julia in Air Gapped Environments* — JuliaCon 2024 (with Avik Sengupta)],
  [*Julia for Computational Statisticians* — Joint Statistical Meetings 2023],
  [*Julia for Data Science and Statistical Computing* (Short Course) — Joint Statistical Meetings 2022],
  [*Using Julia on Large, Streaming Datasets* — Julia Computing Webinar 2020],
  [*Scalable Data Analysis with JuliaDB and OnlineStats* — JuliaCon 2018],
  [*SparseRegression.jl: Linear Models with Sparse Coefficients* — JuliaCon 2017],
  [*Sorting Algorithms* — NC State, ST 758: Statistical Computing (Fall 2017)],
  [*Online MM Algorithms for Machine Learning* — International Chinese Statistical Association Conference 2016],
  [*Julia for Modern Data Analysis* — PyData Carolinas 2016],
  [*OnlineStats.jl: Online Algorithms for Big and Streaming Data* — Joint Statistical Meetings 2016],
  [*Online Optimization* — NC State, ST 790: Advanced Computing (Spring 2015)],
)

//-----------------------------------------------------------------------------# Teaching

#section("Teaching")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 0.5em,
  [*Course Instructor*], [NC State: ST 312 - Intro to Statistics II], [Spring 2017, Spring 2015],
  [*Course Instructor*], [NC State: ST 311 - Intro to Statistics], [Fall 2016, Fall 2014],
  [*Course Instructor*], [NC State: ST 350 - Economic and Business Statistics], [Fall 2012],
)

//-----------------------------------------------------------------------------# Interests

#section("Interests and Other Skills")

AI/ML, Online Algorithms, Numerical Optimization, MM Algorithms, Ecology & Earth Systems, Penalized Regression, Reproducible Research, Numerical Linear Algebra, Data Visualization, Pluto Notebooks, Jupyter Notebooks, Web Apps, Interactive Dashboards, Signal Processing, Linear Models, Mixed Models, Design of Experiments, Time Series Analysis, Geodesy, Differential Equations, Modeling and Simulation, Open Source Software
