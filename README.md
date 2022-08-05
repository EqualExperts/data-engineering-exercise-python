[![Python exercise](https://github.com/EqualExperts/data-engineering-exercise-python/actions/workflows/python-exercise.yml/badge.svg)](https://github.com/EqualExperts/data-studio-exercise-python-sql/actions/workflows/python-exercise.yml)
# Data Engineering Challenge
Thank you for taking the time to participate in this challenge. Please read carefully all the instructions below and don’t hesitate to contact us if you have any queries.

As a Data Engineer, you should NOT find this exercise to be particularly difficult. 
We are expecting a simple solution that addresses just what is asked, and you should take no more than 90 minutes.

The exercise runs inside **docker**, so apart from that you don't need any setup.

(if you've started the exercise in the previous version, feel free to continue the challenge, here is the [link](https://github.com/EqualExperts/data-engineering-exercise-python/tree/v0.1.0))
# Vote Outliers 

## Task

You should create an ingestion process for votes data and address the following use case.

### Use Case - Detect outlier weeks

A week is classified as outlier when: 

- the total votes deviate from the average of more than 20%
- when the previous week wasn’t an outlier. 

Each outlier should contain the year, the week number and the number of votes.

Details:
- You are provided with a sample file of votes (use ``make fetch-data`` to get the sample data). 
- In a Prod environment the ingestion runs multiple times to ingest 'new' data.
- The ingestion receives the file path as parameter, as you can see in the Makefile.
- You will use sqlite3 for demonstration; your solution should treat sqlite3 as if it were a real data warehouse.
- The database should be saved on the root folder of the project as warehouse.db, as we're doing on [src/db_test.py].
- There's a Makefile which abstracts the development environment inside a docker container.
- We're going to review your project using the same Makefile.
  
This repo contains a bootstrap project to create the data ingestion.
You are free to import another libs into the Pipfile, create/delete src files, for example), so long as it can still be executed by the Makefile

[Makefile](Makefile) is provided with the following targets: install-dependencies, fetch-data, lint, run-query, run, test, tidy and **help**. You should run **make install-dependencies** before any other targets.

[src/main.py](src/main.py) is provided as an entry point.

[src/db.py](src/db.py) is empty, but the associated test demonstrates interaction with an SQLite3 database.

#### Things we value:
- Self-explanatory code – the solution must speak for itself. Multiple paragraphs explaining the solution are a sign that it isn’t straightforward enough to understand purely by reading the code. Also, you should ensure your code is correctly formatted and lints cleanly.
- Tests – the solution must be well tested and possibly using a (test­-first) approach.
- Simplicity – We value simplicity as an architectural virtue and a development practice. Solutions should reflect the difficulty of the assigned task, and should NOT be overly complex. Layers of abstraction, patterns, or architectural features that aren’t called for should NOT be included.

### Final notes
**Please include instructions** about your strategy and important decisions you made. Also please answer the following questions: 
- What kind of data quality measures would you apply to your solution in production?
- What would need to change for the solution scale to work with a 10TB dataset with 5GB new data arriving each day?

**Your submission should be a zip file containing your solution and the requested documentation.**

Your submission is your own work, you will not share your submission with others (including sharing your repository on Github) and you will not otherwise engage in activities that dishonestly improve your result.

## Next Phase
We are expecting you to succeed in this phase, so the next phase is an interview where we are expecting that you can show and run your solution on your end. 
You walk us through your solution and we're going to provide feedback and discuss any choices that you made.
Apart from the exercise, we'll have a conversation about your experience, and you'll let us know in detail your past challenges and your future expectations. Good Luck!
