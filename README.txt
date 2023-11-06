## RUN APPLICATION ON WINDOW ENVIRONTMENT ==================================
Prerequisites: 
	Docker Desktop (version 4.25.0 recommened) installed
	Enabling Docker support in WSL 2 distros
	IntelliJ IDEA installed

Steps to run application:
	- Upzip the Assignment.zip
	- Open project by IntelliJ
	- Go to Maven -> tasks -> Lifecycle -> install
	- Go to the terminal, type the command: docker-compose up -d
	- Open Postman and test API at localhost:8080


## TEST API ================================================================
Authorizations:
	Username: user
	Password: password
	
	Username: admin
	Password: password

* Note: 
- The user 'user' can only access GET endpoints, whereas the user 'admin' can access all endpoints!

1. Get a list of all tasks

	localhost:8080/api/tasks
	
	@Authorization:
		- username: user/admin
		- password: password

2. Create a new task
	
	localhost:8080/api/tasks
	
	@RequestBody:
		- title
		- description

	@Authorization:
		- username: admin
		- password: password

3.  Get a single task by ID

	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (get a task with ID 2)

	@Pathvariable:
		- id
	
	@Authorization:
		- username: user/admin
		- password: password

4. Update a task by ID
	
	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (update a task with ID 2)	

	@Pathvariable:
		- id
	
	@RequestParam:
		- title
		- description
		- completed

	@Authorization:
		- username: admin
		- password: password

5. Delete a task by ID
	
	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (delete a task with ID 2)

	@Pathvariable:
		- id
	
	@Authorization:
		- username: admin
		- password: password
