#!/bin/bash -l
#SBATCH --job-name=quicktst
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --nodelist=compute03
#SBATCH --mem=25G

#commands
module purge
module load qe/7.0-intelmpi

srun --mpi=pmi2 pw.x -inp cri3-exp-soc_90Ry_k6x6x1.scf.in | tee scf-soc_90Ry_k6x6x1.log
