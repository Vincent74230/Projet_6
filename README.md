# HOW TO CREATE AND FILL THIS DATABASE (GNU / LINUX)

### I - Install requirements;

1 - Open a console and place yourself in the programm folder

2 - Install virtual env : pip3 install virtual env

3 - Create a virtual environement : virtualenv -p python3 env

4 - Activate it : source env/bin/activate

5 - Install all requirements needed for the programm : pip3 install -r requirements.txt

### II - Install and configure mysql;

1 - Install mysql client server : sudo apt-get install mysql-server mysql-client

2 - Launch it as a root user : sudo mysql -u root -p

3 - Create the right user : CREATE USER 'oc_student'@'localhost' IDENTIFIED BY 'password';
(you might change user name and password if you like)

GRANT ALL PRIVILEGES ON oc_pizza_2.* TO 'oc_student'@'localhost';

4 - Exit mysql by typing exit, back to the console type : sudo mysql -u oc_student -p
You're now logged as the new user

5 - Create database : CREATE DATABASE oc_pizza_2;
(the name is important)

6 - Type : USE oc_pizza_2;

You're now in the database

### III - Create and fill database;

Type : SOURCE init.sql;

The oc_student_database is now created