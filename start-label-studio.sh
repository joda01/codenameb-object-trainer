# Run latest Docker version
read -p "Enter project name: " projectname
sudo chmod 777 `pwd`/projects/$projectname
docker run -it -p 8080:8080 -v `pwd`/projects/$projectname:/label-studio/data heartexlabs/label-studio:latest
# Now visit http://localhost:8080/