[![Python exercise](https://github.com/EqualExperts/data-engineering-exercise-python/actions/workflows/python-exercise.yml/badge.svg)](https://github.com/EqualExperts/data-studio-exercise-python-sql/actions/workflows/python-exercise.yml)
## Data Engineering Challenge
Thank you for taking the time to participate in this challenge. Please read carefully all the instructions below and don’t hesitate to contact us if you have any queries.

As a Data Engineer, you should NOT find this exercise to be particularly difficult. 
We are expecting a simple solution that addresses just what is asked, and you should take no more than 90 minutes.

## Exercise Instructions 

You are a consultant assisting an organisation with data engineering.
You have been given the following user stories to action:

> - As a data scientist or analyst
> - I want to query posts and votes in the data warehouse
> - So that I can conveniently answer important business questions such as "what is the mean votes per post per week?"

- You are provided a sample of posts and votes; in production, files like these will land as a supplier sends them
- You will use sqlite3 for demonstration; your solution should treat sqlite3 as if it were a real data warehouse
- If the sqlite3 database file is deleted, your pipeline should re-create it from posts and tags data
- If the sqlite3 database file already exists, your pipeline should merge any new posts and votes data into it
- Your program will be invoked with `pipenv run python src/main.py /path/to/posts_file.json /path/to/votes_file.json`

This repo contains a bootstrap project to create the data ingestion.
You are free to change anything about this bootstrap solution as you see fit (import another libs, create/delete src files, for example), so long as it can still be executed by a reviewer.

- The project is set up to use Pipenv & Python 3.8
- SQLite3 provides an infrastructure-free simple data warehouse stand-in
- Testing environment with pytest
- Facilites for linting etc. are provided as scripts and integrated with Pipenv

[Pipfile](Pipfile) is provided to manage the dependencies using pipenv. 

  - Use `pipenv install --dev` to install dependencies in a virtualenv.
  - Use `pipenv shell` to spawn a shell within the virtualenv.

[Scripts](scripts) is provided with helpful scripts to fetch data, test, lint and tidy code. Pipenv is used to run the scripts: 

  - `pipenv run fetch_data`

  - `pipenv run test`

  - `pipenv run lint`

  - `pipenv run tidy`

[src/main.py](src/main.py) is provided as an entry point.

[src/db.py](src/db.py) is empty, but the associated test demonstrates interaction with an SQLite3 database.

#### Things we value:
- Self-explanatory code – the solution must speak for itself. Multiple paragraphs explaining the solution are a sign that it isn’t straightforward enough to understand purely by reading the code. Also, you should ensure your code is correctly formatted and lints cleanly.
- Tests – the solution must be well tested and possibly using a (test­-first) approach.
- Simplicity – We value simplicity as an architectural virtue and a development practice. Solutions should reflect the difficulty of the assigned task, and should NOT be overly complex. Layers of abstraction, patterns, or architectural features that aren’t called for should NOT be included.

### Final notes
Please include instructions about your strategy and important decisions you made. Also please answer the following questions: 
- How did you meet the needs of a data scientist?
- How did you ensure data quality?
- What would need to change for the solution scale to work with a 10TB dataset with new data arriving each day?

**Your submission should be a zip file containing your solution and the requested documentation.**

Your submission is your own work, you will not share your submission with others (including sharing your repository on Github) and you will not otherwise engage in activities that dishonestly improve your result.

## Next Phase
We are expecting you to succeed in this phase, so the next phase is an interview where we are expecting that you can show and run your solution on your end. 
You walk us through your solution and we're going to provide feedback and discuss any choices that you made.
Apart from the exercise, we'll have a conversation about your experience, and you'll let us know in detail your past challenges and your future expectations. Good Luck!
