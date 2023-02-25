#python train.py --img {SIZE}\
#               --batch {BATCH_SIZE}\
#               --epochs {EPOCHS}\
#               --data ../vehicles_open_image/data.yaml\
#               --weights {MODEL}.pt\
#               --workers {WORKERS}\
#               --project {PROJECT}\
#               --name {RUN_NAME}\
#               --exist-ok
#

read -p "Enter project name: " projectname

cd /yolov5
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd /workspaces/open-bio-image-trainer

python /yolov5/train.py --img 640 --batch 1 --epochs 10 --data `pwd`/projects/$projectname/data.yaml --weights '' --cfg yolov5s.yaml --device cpu --workers 1  --project `pwd`/projects/$projectname --name $projectname



