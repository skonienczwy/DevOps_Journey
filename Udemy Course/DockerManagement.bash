#Create a nginx server running on port 80.
docker container run -d -p 80:80 --name AssignmentNginx nginx
#Create an Apache server running on port 8080.
docker container run -d -p 8080:80 --name AssignmentApache httpd:2.4
#Create a Mysqel server running on port 3306 generating a random password.
docker container run -d -p 3306:3306 --env MYSQL_RANDOM_ROOT_PASSWORD=yes --name AssignmentMysql mysql
#Check the password on mysql cointainer.
docker cointainer logs containerID( or ContainerName )
#Stop and delete all containers which have been created.
docker stop AssignmentMysql AssignmentApache AssignmentNginx
docker container rm AssignmentMysql AssignmentApache AssignmentNginx