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

# If you have no GPU replace --device 0 with --device cpu


read -p "Enter project name: " projectname

cd /yolov5
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim
cd /workspaces/imagec-ai-training

python /yolov5/train.py --img 1280 --batch 8 --accumulate 2 --epochs 800 --data `pwd`/projects/$projectname/data.yaml --weights yolov5l.pt --cfg yolov5m.yaml --device cpu --workers 1  --project `pwd`/projects/$projectname --name result --device 0



#
# Convert to ONNX
#
#python /yolov5/export.py --weights `pwd`/projects/nucleus02/result2/weights/best.pt --include torchscript onnx --opset 12

#python /yolov5/export.py --weights `pwd`/projects/cell-brightfield-02/result3/weights/best.pt --include torchscript onnx --opset 12