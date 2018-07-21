# About
* quiz app
* run locally or with docker-compose
* tests are run with h2 database
* app uses sql database (local or in docker)

## General info
Java 8  
Scripts: /src/main/resources/\*.sql  
Spring settings: /src/main/resources/\*.properties  
Accounts: user = Nick, password = Nack  
Default port: 8080  

## Run locally

#### Build
mvn clean install

#### Test
mvn clean test -Dspring.profiles.active=test

#### Run
* create local database named "quiz" on port 3306
* create user "databaseUser" with password "userPassword"
* grant user "databaseUser" access on database "quiz"
  * login via command line or terminal with your mysql root user:  
  mysql -h 127.0.0.1 -P 3306 -u root -p
  * grant all privileges to "databaseUser" on database "quiz':  
  GRANT ALL PRIVILEGES ON quiz.\* TO 'databaseUser'@'localhost';  
* Run  : mvn spring-boot:run
* insert sample data in quiz database:
  * connect to "quiz" database on localhost:3306
  * open a new sql script and type: "use quiz;"
  * copy content of data-h2.sql
  * paste content in the sql script and run the script
  * your sample data has now been add
* navigate to localhost:8080 and login with user "Nick", password "Nack"

## Run with docker-compose
* Install docker
* in base directory */quiz-app/* run: docker-compose -f docker-compose-template.yml up -d
* navigate to localhost:3002 (phpmyadmin) and login with user: "databaseUser", password: "userPassword"
* go to the SQL tab, copy content of data-h2.sql and press GO
  * you have just initialized the database with some sample questions
* navigate to localhost:8080 and login with user "Nick", password "Nack"

### Remark
Currently running with docker-compose does not work on a amazon linux instance due to a docker network problem.  