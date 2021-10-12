#!/bin/bash
####### Properties

#SBATCH --time=04:00:00
#SBATCH --account=def-hemmati-ab
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=64G
#SBATCH --job-name=log_d4j
#SBATCH --output=%x-%j.out
####### Email
#SBATCH --mail-user=ehsan.mashhadi@gmail.com
#SBATCH --mail-type=ALL

module load java/1.8.0_192
bash run.sh Codec 1b