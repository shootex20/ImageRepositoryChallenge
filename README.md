# Instructions

Requirements:
Netbeans 8.2 IDE
Tomcat 8.0.27 OR Tomcat 9
MySQL 5.7.23
Heidi SQL

How to deploy:
1.	Open NetBeans IDE 8.2
2.	On the top go to Team > Git > Clone
3.	In the Repository URL section put the URL: https://github.com/shootex20/ImageRepositoryChallenge.git
4.	Place your username / password.
5.	(OPTIONAL) Specify your destination to clone to.
6.	Click finish.

Import the database:
1.	Open HeidiSQL
2.	Navigate to the database package inside netbeans (Source packages > Database)
3.	Open the imagerepository.sql and copy everything inside of it.
4.	Go back to HeidiSQL and make a new query
5.	Paste everything in the Query
6.	Right click > Run
7.	Go back to the netbeans project and navigate to Web Pages > META-INF
8.	Open the contaxt.xml
9.	Update the port, username, and password to your SQL information and save.
Running the project:
1.	Right click the project.
2.	Hit ‘Run’
3.	Now you have successfully ran the project!


