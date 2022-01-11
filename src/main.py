import json

# The following code is purely illustrative
try:
    with open('uncommitted/Posts.json', 'r') as posts_in:
        print(json.load(posts_in)[0])
except FileNotFoundError:
    print("Please download the dataset using 'pipenv run fetch_data'")
