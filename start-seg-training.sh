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
cd /workspaces/open-bio-image-trainer


#python /yolov5/segment/train.py --model yolov5m-seg.pt --data coco128-seg.yaml --epochs 5 --img 640

python /yolov5/segment/train.py --img 640 --batch 1 --epochs 256 --data `pwd`/projects/$projectname/data.yaml --weights yolov5m-seg.pt --cfg yolov5m-seg.yaml --device 0 --workers 1  --project `pwd`/projects/$projectname --name result

#
# Convert to ONNX
#
#python /yolov5/export.py --weights `pwd`/projects/nucleus02/result2/weights/best.pt --include torchscript onnx --opset 12

#python /yolov5/export.py --weights `pwd`/projects/cell_detection/result5/weights/best.pt --include torchscript onnx --opset 12


#python /yolov5/export.py --weights `pwd`/projects/cell-brightfield-01/result3/weights/best.pt --include torchscript onnx --opset 12

#python /yolov5/export.py --weights `pwd`/projects/cell-brightfield-02/result4/weights/best.pt --include torchscript onnx --opset 12
#python /yolov5/export.py --weights `pwd`/projects/cell-brightfield-02/result5/weights/best.pt --include torchscript onnx --opset 12