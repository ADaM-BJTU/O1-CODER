accelerate launch --config_file "./train_prm/utils/dist_configs/multi_gpu.yaml" \
    ./run.py \
    --model_name_or_path "your model path" \
    --data_path "./data/examples/soft_label_examples.json" \
    --use_soft_label \
    --output_dir "./train_prm/outputs" \
    --overwrite_output_dir \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --num_train_epochs 3 \
    --learning_rate 1e-4 \
    --lr_scheduler_type "cosine" \
    --save_strategy "steps" \
    --eval_strategy "steps" \
    --save_steps 200 \
    --eval_steps 100 \
    --save_total_limit 2 \
    --weight_decay 0.01 \
    --logging_steps 10 \
    --log_level "info" \
    --bf16 \
    --report_to "wandb" \
    --ddp_find_unused_parameters False \