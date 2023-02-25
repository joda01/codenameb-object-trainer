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

python /yolov5/train.py --img 640 --batch 16 --epochs 256 --data `pwd`/projects/$projectname/data.yaml --weights yolov5m.pt --cfg yolov5m.yaml --device cpu --workers 1  --project `pwd`/projects/$projectname --name result

#
# Convert to ONNX
#
python /yolov5/export.py --weights `pwd`/projects/$projectname/$projectname/weights/best.pt --include torchscript onnx

python /yolov5/export.py --weights `pwd`/projects/nucleus/result/weights/best.pt --include torchscript onnx