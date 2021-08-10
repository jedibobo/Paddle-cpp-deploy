./build/main \
                                          --model_dir=./ppyolov2_r50vd_dcn_365e_coco \                                          --video_file="NULL" \
                                          --camera_id=0  \
                                          --use_gpu=1  \
                                          --run_mode=trt_fp32 \
                                          --cpu_threads=6
# terminate called after throwing an instance of 'std::length_error'
#   what():  vector::_M_default_append

# ./build/main --model_dir=./ppyolov2_r50vd_dcn_365e_coco --image_file=/home/lyb/code/Paddle-TRT-TEST/imgs/1a.jpg --run_mode=trt_fp16 --use_gpu=1 --run_benchmark
# WARNING: Logging before InitGoogleLogging() is written to STDERR
# E0810 16:18:02.041721 16175 helper.h:95] Tactic Device request: 284MB Available: 134MB. Device memory is insufficient to use tactic.
# E0810 16:18:02.147250 16175 helper.h:95] Tactic Device request: 284MB Available: 134MB. Device memory is insufficient to use tactic.
# E0810 16:18:02.680083 16175 helper.h:95] Tactic Device request: 280MB Available: 133MB. Device memory is insufficient to use tactic.
# E0810 16:18:02.722748 16175 helper.h:95] Tactic Device request: 280MB Available: 134MB. Device memory is insufficient to use tactic.
# terminate called after throwing an instance of 'std::length_error'
#   what():  vector::_M_default_append
# fish: “./build/main --model_dir=./ppyo…” terminated by signal SIGABRT (Abort)