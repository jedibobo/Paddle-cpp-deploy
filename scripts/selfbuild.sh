# 是否使用GPU(即是否使用 CUDA)
WITH_GPU=ON

# 是否使用MKL or openblas，TX2需要设置为OFF
WITH_MKL=OFF

# 是否集成 TensorRT(仅WITH_GPU=ON 有效)
WITH_TENSORRT=ON

# paddle 预测库lib名称，由于不同平台不同版本预测库lib名称不同，请查看所下载的预测库中`paddle_inference/lib/`文件夹下`lib`的名称
PADDLE_LIB_NAME=libpaddle_inference

# TensorRT 的include路径
TENSORRT_INC_DIR=/usr/include/aarch64-linux-gnu

# TensorRT 的lib路径
TENSORRT_LIB_DIR=/usr/lib/aarch64-linux-gnu

# Paddle 预测库路径
PADDLE_DIR=/home/lyb/build_github/Paddle/TRT8-develop-build_cuda/paddle_inference_install_dir

# CUDA 的 lib 路径
CUDA_LIB=/usr/local/cuda/lib64

# CUDNN 的 lib 路径
CUDNN_LIB=/usr/lib/aarch64-linux-gnu

rm -rf build
mkdir -p build
cd build
cmake .. \
    -DWITH_GPU=${WITH_GPU} \
    -DWITH_MKL=${WITH_MKL} \
    -DWITH_TENSORRT=${WITH_TENSORRT} \
    -DTENSORRT_LIB_DIR=${TENSORRT_LIB_DIR} \
    -DTENSORRT_INC_DIR=${TENSORRT_INC_DIR} \
    -DPADDLE_DIR=${PADDLE_DIR} \
    -DWITH_STATIC_LIB=${WITH_STATIC_LIB} \
    -DCUDA_LIB=${CUDA_LIB} \
    -DCUDNN_LIB=${CUDNN_LIB} \
    -DPADDLE_LIB_NAME=${PADDLE_LIB_NAME}
make -j6
echo "make finished!"