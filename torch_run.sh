# export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export CUDA_VISIBLE_DEVICES=0

###################################
# User Configuration Section
###################################
RUN_PYTHON_PATH="REPLACE_WITH_PYTHON_PATH" # python path (e.g., "/home/xxx/anaconda3/envs/diffusion_planner/bin/python")

# Set training data path
TRAIN_SET_PATH="/home/ubuntu/nuplan/preprocess" # preprocess data using data_process.sh
TRAIN_SET_LIST_PATH="/home/ubuntu/Diffusion-Planner/diffusion_planner_training.json"
###################################

python3 -m torch.distributed.run --nnodes 1 --nproc-per-node 1 --standalone train_predictor.py \
--use_wandb true \
--num_workers 4 \
--batch_size 8 \
--train_set  $TRAIN_SET_PATH \
--train_set_list  $TRAIN_SET_LIST_PATH \

