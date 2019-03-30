# Sample Project
Template for data projects.
```
sample-project/
├── data
│   ├── external
│   ├── interim
│   ├── processed
│   └── raw
├── docker
│   └── jupyter
│       ├── Dockerfile
│       ├── .env
│       ├── .env.example
│       └── requirements.txt
├── notebooks
│   └── example.ipynb
├── references
├── reports
├── secrets
├── src
│   ├── data
│   │   ├── __init__.py
│   │   └── make.py
│   ├── models
│   │   ├── __init__.py
│   │   ├── predict.py
│   │   └── train.py
│   ├── viz
│   ├── example.py
│   └── __init__.py
├── docker-compose.yml
├── .editorconfig
├── .env
├── .env.example
├── .gitignore
├── Makefile
├── README.md
├── requirements.txt
├── setup.cfg
└── setup.py
```
Essentially, it is the union of [Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/) and [Docker for Data Science](https://dl.acm.org/citation.cfm?id=3152672)
