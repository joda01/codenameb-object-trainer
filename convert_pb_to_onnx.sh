

#python -m tf2onnx.convert --input `pwd`/projects/bio_zoo/nucleus/saved_model.pb --output bio_zoo_nucleus.onnx --opset 12 

#saved_model_cli show --dir `pwd`/projects/bio_zoo/nucleus/TF_SavedModel/ --all
# Look for signature_def inputs/outputs
# --inputs X:0[1,28,28,3]

python -m tf2onnx.convert --saved-model ./TF_SavedModel --opset 12 --output model.onnx --inputs input:0
#python -m onnxruntime.tools.make_dynamic_shape_fixed -h 640

# OpenCV just supports fixed shape models
# https://onnxruntime.ai/docs/tutorials/mobile/helpers/make-dynamic-shape-fixed.html




python -m onnxruntime.tools.make_dynamic_shape_fixed --dim_param batch --dim_value 3 model.onnx model.fixed.onnx


#python -m onnxruntime.tools.make_dynamic_shape_fixed --input_name input --input_shape 1,3,640,640 model.onnx model.fixed.onnx




python -m onnxruntime.tools.make_dynamic_shape_fixed --input_name input:0 --input_shape 1,3,640,640 model.onnx model.fixed.onnx