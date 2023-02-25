read -p "Enter project name: " projectname
mkdir -p `pwd`/projects/$projectname
mkdir -p `pwd`/projects/$projectname/valid/images
mkdir -p `pwd`/projects/$projectname/valid/labels

mkdir -p `pwd`/projects/$projectname/train/images
mkdir -p `pwd`/projects/$projectname/train/labels

mkdir -p `pwd`/projects/$projectname/result

cp templates/data.yaml `pwd`/projects/$projectname/data.yaml
sed -i "s/<PROJECT-NAME>/$projectname/" `pwd`/projects/$projectname/data.yaml