# open-bio-image-trainer

Package to train object detection model for biological problems

## Start

1) Install Visual Studio Code and the remote container plugin
2) Open the folder
3) Reopen project in container


## Create training data

1) Execute `create-new-project.sh`
2) Execute `start-label-studio.sh` from a separate terminal.
3) Open a browser and type `http://127.0.0.1:8080`
4) Use any e-mail and password to login
5) Create new project
6) Go to **Labeling Setup** and click custom template
![doc/01_create_new.png](doc/01_create_new.png)
7) Copy paste the content form `templates/labeling_interface.xml`.
8) Click **Save**.
9) Click **Import** to import new images for training
10) Open the image and label them
![doc/02_label.png](doc/02_label.png)
11) When you have finished export the data in YOLO format
![doc/03_export.png](doc/03_export.png)
12) Unzip the downloaded folder and split the data in train and valid.
13) Copy the images and labels to the folders `train/images` and `train/labels` and `valid/images` and `valid/labels` 


## Start the training

1) Go to `projects/<PROJECT NAME>/data.yaml` and enter the labels of your training data.
2) Execute `start-training.sh`

---
https://blog.paperspace.com/train-yolov5-custom-data/