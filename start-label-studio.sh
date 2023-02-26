# Run latest Docker version
read -p "Enter project name: " projectname
sudo chmod 777 `pwd`/projects/$projectname
docker run -it -p 8080:8080 -v `pwd`/projects/$projectname:/label-studio/data heartexlabs/label-studio:latest
# Now visit http://localhost:8080/


docker run --network=host -it -p 8080:8080 -v /home/unisbg:/label-studio/data  heartexlabs/label-studio:latest label-studio 


docker run  --env LABEL_STUDIO_DISABLE_SIGNUP_WITHOUT_LINK=true --env LABEL_STUDIO_USERNAME="admin@plus.com" --env LABEL_STUDIO_PASSWORD="FMaIQ1cIFeW44II8q" -it -p 443:8080 -v '/home/unisbg:/label-studio/data' -v '/etc/letsencrypt/archive/a3w6k4.myvserver.online/:/certs' heartexlabs/label-studio:latest label-studio --cert /home/certs/fullchain1.pem --key /home/certs/privkey1.pem