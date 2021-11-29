#!/bin/bash

job1=$(sbatch --output=bash_timestamp_1.out slurm_timestamp.sh | cut -d ' ' -f 4)
job2=$(sbatch --output=bash_timestamp_2.out slurm_timestamp.sh | cut -d ' ' -f 4)
job3=$(sbatch --output=bash_timestamp_3.out slurm_timestamp.sh | cut -d ' ' -f 4)
job4=$(sbatch --output=bash_timestamp_4.out slurm_timestamp.sh | cut -d ' ' -f 4)

sbatch --dependency=afterok:${job1}:${job2}:${job3}:${job4} --output=bash_timestamp_5.out slurm_timestamp.sh
