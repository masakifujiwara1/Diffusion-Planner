###################################
# User Configuration Section
###################################
NUPLAN_DATA_PATH="/home/ubuntu/nuplan/dataset/nuplan-v1.1/splits/mini" # nuplan training data path (e.g., "/data/nuplan-v1.1/trainval")
NUPLAN_MAP_PATH="/home/ubuntu/nuplan/dataset/maps" # nuplan map path (e.g., "/data/nuplan-v1.1/maps")

TRAIN_SET_PATH="/home/ubuntu/nuplan/preprocess" # preprocess training data
###################################

python3 data_process.py \
--data_path $NUPLAN_DATA_PATH \
--map_path $NUPLAN_MAP_PATH \
--save_path $TRAIN_SET_PATH \
--total_scenarios 1000000 \

