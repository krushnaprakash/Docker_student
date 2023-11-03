# Docker_student

# hosting 3tier application usign docker
#using following cmd to run the  mysql docker container

docker run -d -p 3306:3306 --name Db-container -e MYSQL_ROOT_PASSWORD=<PASSWD> mysql

#Enter the mysql container
docker exec -it container_id bash

mysql -u<root> -p<passwd>
show databases;
create database studentapp;
use studentapp
CREATE TABLE if not exists students(student_id INT NOT NULL AUTO_INCREMENT,
	student_name VARCHAR(100) NOT NULL,
    student_addr VARCHAR(100) NOT NULL,
	student_age VARCHAR(3) NOT NULL,
	student_qual VARCHAR(20) NOT NULL,
	student_percent VARCHAR(10) NOT NULL,
	student_year_passed VARCHAR(10) NOT NULL,
	PRIMARY KEY (student_id)
);
exit
exit 
#######################

