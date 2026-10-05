// Résumé, recreated in Typst from the original 1.5-column-cv LaTeX template.
// Doesn't use colours; font weights are used instead for styling.

#set page(paper: "a4", margin: 15mm)
#set text(font: "Roboto", size: 9.5pt, lang: "en", region: "GB")
#set par(justify: false, leading: 0.65em)

// column widths
#let left-col-width = 44.5mm
#let col-gap = 3.5mm

// spacing amounts
#let after-item-skip = 2mm
#let after-section-skip = 1mm
#let after-name-skip = 2.5mm
#let after-info-line-skip = 0.8mm
#let after-title-skip = 0.8mm
#let item-sep = 0.6mm

#set list(spacing: item-sep, indent: 0mm)

// styles
#let cv-name-style(body) = text(size: 15pt, weight: "medium")[#body]
#let cv-section-style(body) = text(size: 10pt, weight: "medium")[#body]
#let employer(body) = body
#let cv-title-style(body) = text(size: 12pt)[#body]
#let cv-duration-style(body) = text(size: 9pt)[#body]

// a two-column row: left column right-aligned, right column left-aligned, top-aligned
#let cv-row(left-content, right-content) = grid(
  columns: (left-col-width, 1fr),
  column-gutter: col-gap,
  align(right + top)[#left-content],
  align(left + top)[#right-content],
)

// personal info: photo | name & contact | bio bullets
#let cv-personal-info(photo, contact, bio) = {
  grid(
    columns: (left-col-width, 60mm, 1fr),
    column-gutter: col-gap,
    align(right + top)[#photo],
    align(left + top)[#contact],
    align(left + top)[#bio],
  )
  v(after-item-skip)
}

// name, with space after
#let cv-name(name) = {
  cv-name-style(name)
  v(after-name-skip)
}

// a personal-info line beginning with an icon
#let cv-info-line(icon, height, body) = {
  box(baseline: 30%, image(icon, height: height))
  h(1.5mm)
  body
  v(after-info-line-skip)
}

// a section heading with a horizontal rule
#let cv-section(name) = {
  cv-row(cv-section-style(name), line(length: 100%, stroke: 0.3mm + black))
  v(after-section-skip)
}

// a standard CV item (job, education entry, etc.)
#let cv-item(left-content, right-content, skip: after-item-skip) = {
  cv-row(left-content, right-content)
  v(skip)
}

// a title, with space after
#let cv-title(title) = {
  cv-title-style(title)
  v(after-title-skip)
}

// ============================================================
// document
// ============================================================

#cv-personal-info(
  image("me-circle.png", height: 24mm),
  [
    #set par(spacing: 0pt)
    #cv-name[Timofei Tipishev]
    #cv-info-line("070-envelop.pdf", 4mm)[tipishev\@gmail.com]
    #cv-info-line("067-phone.pdf", 4mm)[+46 762\u{00A0}333\u{00A0}946]
    #cv-info-line("github.png", 4mm)[#link("https://github.com/tipishev")[tipishev]]
  ],
  [
    #set list(spacing: 1.3mm)
    - Senior Python/Erlang developer
    - Data Scientist/Engineer
    - Tech workshops speaker
    - JavaScript, Vue.js, Rust amateur
    - PICO-8/Forth/Monkey C/Haskell hobbyist
  ],
)

// work experience
// ---------------

#cv-section[WORK EXPERIENCE]

// Kambi
#cv-item(
  [
    #cv-duration-style[2025 -- present]

    #employer[Tzeract/Kambi]
  ],
  [
    #cv-title[Software Developer]

    - Developed and maintained AWS infra for multisports betting platform
    - Integrated real-time sporting events feeds from multiple providers
  ],
)

// Klarna
#cv-item(
  [
    #cv-duration-style[2022 -- 2025]

    #employer[Klarna]
  ],
  [
    #cv-title[Associate Engineering Manager -> Senior Software Developer]

    - Migrated a 4-person Java development team into data engineering
    - Built high cardinality pipelines with PySpark, Terraform, and AWS Glue/Athena
    - Revived and repurposed an abandoned Glue/PySpark framework for analytics pipeline
  ],
)

// Kivra
#cv-item(
  [
    #cv-duration-style[2020 -- 2022]

    #employer[Kivra]
  ],
  [
    #cv-title[Erlang Developer / Kivra+ Backend Dev Lead]

    - Coordinated backend development in a cross-functional team
    - Integrated with Google Play and App Store using Erlang/OTP, Cowboy, and Riak
  ],
)

// Sportamore
#cv-item(
  [
    #cv-duration-style[2016 -- 2020]

    #employer[Sportamore]
  ],
  [
    #cv-title[Senior Software Developer]

    // greenfield
    - Created and launched internal services
      - supplier orders recommendation service (Flask, scikit-learn, Vue.js)
      - reporting workflows runner (Apache Airflow, Google Sheets)
      - drag-and-drop promotional emails creator (Django, Vanilla.js)

    // brownfield
    - Maintained and improved internal services
      - data warehouse (Python 3, Flask, SQLAlchemy, RabbitMQ)
      - warehouse management system and customer-facing commercial front (Django)
      - deployment server (Fabric, custom blueprints)
  ],
)

// Paxport
#cv-item(
  [
    #cv-duration-style[2015 -- 2016]

    #employer[Paxport]
  ],
  [
    #cv-title[Java Backend Developer]

    - Developed airplane seats booking backend using Java8/PostgreSQL/Spring/Vert.x
    - Integrated booking backend with J2EE-monolith using Vert.x (eventBus/HTTP)
  ],
)

// Yandex
#cv-item(
  [
    #cv-duration-style[2014 -- 2015]

    #employer[Yandex]
  ],
  [
    #cv-title[Python/Flask Backend Developer]

    - Developed and launched a Python/Flask/MongoDB/Celery web service
    - Integrated with internal services Yandex.Music, Yandex.News, etc.
  ],
)

// Education
// ---------

#cv-section[EDUCATION]

// coursera
#cv-item(
  cv-duration-style[2020],
  [
    #set par(spacing: 0pt)
    #cv-title[Reinforcement Learning Specialization]
    University of Alberta on Coursera
  ],
  skip: 0.3mm,
)

// SHAD
#cv-item(
  cv-duration-style[2013 -- 2015],
  [
    #set par(spacing: 0pt)
    #cv-title[Diploma]
    Yandex School of Data Analysis
  ],
  skip: 0.3mm,
)

// uOttawa
#cv-item(
  cv-duration-style[2011 -- 2013],
  [
    #set par(spacing: 0pt)
    #cv-title[Master's degree, Systems Science]
    University of Ottawa
  ],
  skip: 0.3mm,
)

// uWaterloo
#cv-item(
  cv-duration-style[2006 -- 2010],
  [
    #set par(spacing: 0pt)
    #cv-title[Bachelor's degree, Mathematics / Business Administration]
    University of Waterloo
  ],
  skip: 0.3mm,
)
