/*
=== NOTICE ===
This template uses the Font Awesome 7 Desktop icons
You can download the fonts here: https://fontawesome.com/download
You either need to install them on your system, or upload them
to your project folder if you use the Typst web app.
*/

#import "@preview/lavandula:0.1.1": *

#show: lavandula-theme

#set text(lang: "en")
#set document(
  title: "António Capela (CV)",
  author: "António Capela",
  date: none,
)

#cv(
  sidebar-position: "left",
  sidebar: [
    = António Capela
    ==== Data Scientist

    #contact-list((
      (icon: "at", icon-solid: true, text: link("mailto:acapela96@hotmail.com")[acapela96\@hotmail.com]),
      (icon: "linkedin", text: link("https://www.linkedin.com/in/appcapela/")[appcapela]),
      (icon: "github", text: link("https://github.com/antcap96")[antcap96]),
      (icon: "phone", text: "+351 969874351"),
    ))

    #sidebar-section(title: "About me")[
      #set par(justify: true)
      #show par: it => block(width: 100%, it)

      Data Scientist with a strong foundation in #highlight[Mathematics] and #highlight[Physics], turning complex data into actionable ML solutions.

      Experienced across the full ML lifecycle: from #highlight[ETL pipelines] and model development to #highlight[deployment] and monitoring in production environments.
    ]

    #sidebar-section(title: "Technical skills")[
      #skill-group(
        name: "Machine Learning",
        icon: "brain",
        icon-solid: true,
        skills: (
          "Scikit-learn",
          "LightGBM",
          "XGBoost",
          "Keras",
          "SHAP",
        )
      )

      #skill-group(
        name: "Data Engineering",
        icon: "database",
        skills: (
          "PySpark",
          "Kedro",
          "Apache Airflow",
          "Kafka",
          "ETL Pipelines",
        )
      )

      #skill-group(
        name: "Cloud & MLOps",
        icon: "cloud",
        icon-solid: true,
        skills: (
          "Azure Databricks",
          "Azure DevOps",
          "MLflow",
          "CI/CD Pipelines",
        )
      )

      #skill-group(
        name: "Programming & Tools",
        icon: "python",
        skills: (
          "Python",
          "SQL",
          "Pandas",
          "Polars",
          "NumPy",
          "Matplotlib",
          "Git",
          "Jupyter",
        )
      )
    ]

    #sidebar-section(title: "Certificates")[
      *Microsoft*
      - Azure Data Scientist Associate
      - Azure AI Engineer Associate

      *Databricks*
      - Data Analyst Associate
    ]

    #sidebar-section(title: "Languages")[
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 1em,
        row-gutter: 0.5em,
        // Row 1
        [🇵🇹 Portuguese],
        align(right)[Mother Tongue],
        // Row 2
        [🇬🇧 English],
        align(right)[C1],
      )
    ]
  ],
  main-content: [
    #section(title: "Experience")[
      #section-element(
        title: "Data Scientist Consultant @ Xpand-IT",
        info: [_Oct 2020 --- Current_],
        [
          Worked with multiple clients on Data Science projects, both as part of embedded teams and on one-time engagements.
          #set text(size: sizes.text-s1)
          #icon-list((
            (icon: "caret-right", text: [
              Currently allocated to a large retail company, working in Azure Databricks. Key responsibilities include:
              - Developing demand forecasting models using gradient boosting.
              - Implementing an MLOps pipeline using Azure DevOps.
              - Implementing metrics and visualizations for model quality monitoring.
              - Developing a data quality validation framework.
            ]),
            (icon: "caret-right", text: [
              Embedded with the Data Science team at a major Portuguese bank for over 1 year:
              - Creating ETL pipelines using PySpark that were orchestrated with #link("https://kedro.readthedocs.io/en/stable/index.html")[Kedro] and #link("https://airflow.apache.org")[Apache Airflow];
              - Developing machine learning models to be used by other teams.
            ]),
            (icon: "caret-right", text: [Developed a classification model in Azure Databricks for a major European agency using gradient boosting (#link("https://lightgbm.readthedocs.io/en/latest/")[LightGBM]). The model was later implemented as a real-time inference model in a Kafka stream.]),
            (icon: "caret-right", text: [Worked for an Irish startup, where we developed an image classification model. The model utilized a Convolutional Neural Network implemented with #link("https://keras.io/")[Keras], leveraging transfer learning from the VGG16 model.]),
            (icon: "caret-right", text: [Performed sentiment analysis using Azure Cognitive Services and keyword extraction with #link("http://yake.inesctec.pt/")[YAKE] to identify reasons for complaints in feedback forms.]),
          ))
        ],
      )

      #section-element(
        title: "Machine Learning Intern @ LIP",
        info: [_July 2017 --- August 2017_],
        [
          Summer internship at the Laboratory of Instrumentation and Experimental Particle Physics (LIP)
          #set text(size: sizes.text-s1)
          #icon-list((
            (icon: "caret-right", text: [Analysed simulated data of di-Higgs production from CERN's ATLAS experiment.]),
            (icon: "caret-right", text: [Developed an ensemble Machine Learning model with Neural Networks and Boosted Decision Trees to identify collisions that generate di-Higgs particles.]),
          ))
        ],
      )
    ]

    #section(title: "Personal projects")[
      #section-element(title: "SqlInPython")[
        #set text(size: sizes.text-s1)
        A Python library that uses the type system to write and validate SQL-like queries. Developed to explore Python's typing capabilities and agentic AI tools. Available on #link("https://github.com/antcap96/sqlinpython/")[GitHub].
      ]
    ]

    #section(title: "Education")[
      #section-element-advanced(
        title: "Bachelor's degree in Engineering Physics",
        info-top-left: "2017",
        info-top-right: "Lisbon",
        [
          #set text(size: sizes.text-s1)
          _Instituto Superior Técnico_
        ],
      )

      #section-element-advanced(
        title: "Master's degree in Mathematics and Applications",
        info-top-left: "2020",
        info-top-right: "Lisbon",
        [
          #set text(size: sizes.text-s1)
          _Instituto Superior Técnico_
          #icon-list((
            (icon: "graduation-cap", text: [Specialization in Probability and Statistics]),
            (icon: "file-lines", icon-solid: true, text: [Dissertation: An Adaptive and Transferable Dialog Management System for Social Aware Task Execution @capela2019adaptive]),
          ))
        ],
      )
    ]

    #section(title: "Bibliography")[
      #bibliography("publications.bib", style: "ieee", title: none)
    ]
  ],
)
