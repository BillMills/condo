#!/bin/bash

#SBATCH --nodes=1
#SBATCH --time=0:01:00
#SBATCH --partition=shas-testing
#SBATCH --ntasks=1
#SBATCH --job-name=bash_HW

module purge

bash timestamp.sh
