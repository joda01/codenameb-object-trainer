

read -p "Enter project name: " projectname


cd /yolov5
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd /workspaces/open-bio-image-trainer


python /yolov5/detect.py --source `pwd`/projects/$projectname/test/images/ --weights `pwd`/projects/$projectname/$projectname/weights/best.pt --conf 0.25 --name $projectname --project `pwd`/projects/$projectname/testrun --conf-thres 0.04 --iou-thres 0.04 --view-img --save-conf
