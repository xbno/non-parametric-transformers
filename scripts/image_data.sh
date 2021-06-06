# MNIST
python run.py --data_set mnist --exp_eval_every_n 1 --exp_eval_every_epoch_or_steps epochs --exp_optimizer_warmup_proportion 0.3 --exp_optimizer lookahead_lamb --exp_azure_sweep True --metrics_auroc False --model_num_heads 8 --model_stacking_depth 8 --exp_lr 1e-3 --exp_scheduler flat_and_anneal --exp_num_total_steps 500000 --exp_gradient_clipping 1 --exp_batch_size 512 --model_dim_hidden 16 --model_augmentation_bert_mask_prob "dict(train=0.15, val=0, test=0)" --exp_tradeoff 1 --exp_tradeoff_annealing cosine --model_checkpoint_key mnist__dim_hidden_16__feature_mask__label_mask__linear --model_image_n_patches 49 --model_image_patch_type linear --model_image_n_channels 1 --model_label_bert_mask_prob "dict(train=0.15, val=0.0, test=0.0)"
# CIFAR-10
python run.py --data_set cifar10 --exp_eval_every_n 1 --exp_eval_every_epoch_or_steps epochs --exp_optimizer_warmup_proportion 0.7 --exp_optimizer lookahead_lamb --exp_azure_sweep True --metrics_auroc False --exp_print_every_nth_forward 100 --model_num_heads 8 --model_stacking_depth 8 --exp_lr 1e-3 --exp_scheduler flat_and_anneal --exp_num_total_steps 1000000 --exp_gradient_clipping 1 --exp_batch_size 512 --model_dim_hidden 64 --model_augmentation_bert_mask_prob "dict(train=0.15, val=0, test=0)" --exp_tradeoff 1 --exp_tradeoff_annealing cosine --model_checkpoint_key cifar10__bs_512__feature_mask__linear__flip_crop --data_force_reload True --model_image_n_patches 64 --model_image_patch_type linear --model_image_n_channels 3 --model_image_n_classes 10 --model_image_random_crop_and_flip True