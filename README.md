# Docker Image of Plorma
Plorma is a webapplication to plan, organise and manage tasks. It provides
tools like Burndown Diagrams or Kanban Boards which are often used in agile
proccess like SCRUM.

While it tries to be as generic as possible it can be esspecially used as a
simple issue or bug tracker in software development.

## Documentation
The documentation is available on [Plorma on Readthedocs](http://plorma.readthedocs.org/en/latest)

## Source of Plorma
The sourcecode is available on [Plorma on Bitbucket](https://bitbucket.org/ti/plorma)

## How to run
Plorma requires a postgres database to run. So a postgres container ist
started. Starting the Plorma container will also install some demo data in the
Tracker to play around.

	docker run -d --name database postgres
	docker run -d --link database:db -P plorma

### Demouser
* Login: peter  Pass: peter  -> Role: Productowner/Developer
* Login: dave   Pass: dave   -> Role: Developer
* Login: admin  Pass: secret -> Role: Developer
