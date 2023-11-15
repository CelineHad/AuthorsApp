# Authors Application
## Overview
This web application provides functionality to view and export author data. It uses a Java-based backend with Servlets, following the MVC design pattern.


## Features:
- #### View Authors: Paginated display of authors data.
- #### Export Authors: Functionality to export authors data in TSV format.


## Prerequisites
- Java JDK (Version 8 or higher)
- Apache Tomcat (Version 9 or higher)
- SQL Server (or any other relational database)
- IntelliJ IDEA (or any other Java IDE with servlet support)

## Setup and Installation
### - Database Setup
- Install and set up your SQL Server or preferred database system.
- Create a database using the script file provided in the project files.

### - Application Configuration
- Open the project in IntelliJ IDEA or your Java IDE.
- Ensure the JDK is properly configured in the IDE settings.
- Update the database connection settings in src/com/authors/util/DBConnection.java to match your database setup.

### - Running the Application
- Set up Tomcat Server in IntelliJ IDEA:
- Go to "Run" then "Edit Configurations".
- Add a new Tomcat Server configuration and set the application deployment.

### - Start the Tomcat Server:
- Run the server.
- The application should now be running on http://localhost:8080/AuthorsApp_war/authors.


