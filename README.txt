## RUN APPLICATION ON WINDOW ENVIRONTMENT ==========================
Prerequisites: 
	Docker Desktop (version 4.25.0 recommened) installed
	Enable Docker support in WSL 2 distros
	IntelliJ IDEA installed

Steps to run application:
	- Pull project from GitHub
	- Upzip the Home-Assignment.zip
	- Open project by IntelliJ
	- Go to Maven -> tasks -> Lifecycle -> install
	- Go to the terminal, type the command: docker-compose up -d


## TEST API ========================================================
Authorizations:
	Username: user
	Password: password
	
	Username: admin
	Password: password

* Note: 
- The user 'user' can only access GET endpoints, whereas the user 'admin' can access all endpoints!
- Datatable is empty at the beginning

1. GET LIST OF ALL TASKS

	localhost:8080/api/tasks
	
	@Authorization (Basic Auth):
		- username: user/admin
		- password: password

2. CREARE A NEW TASK
	
	localhost:8080/api/tasks
	
	@RequestBody:
		- title
		- description

	@Authorization (Basic Auth):
		- username: admin
		- password: password

3.  GET A SINGLE TASK BY UD

	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (get a task with ID 2)

	@Pathvariable:
		- id
	
	@Authorization (Basic Auth):
		- username: user/admin
		- password: password

4. UPDATE A TASK BY ID
	
	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (update a task with ID 2)	

	@Pathvariable:
		- id
	
	@RequestParam:
		- title
		- description
		- completed

	@Authorization (Basic Auth):
		- username: admin
		- password: password

5. DELETE A TASK BY ID
	
	localhost:8080/api/tasks/{id} --> Example: localhost:8080/api/tasks/2 (delete a task with ID 2)

	@Pathvariable:
		- id
	
	@Authorization (Basic Auth):
		- username: admin
		- password: password
