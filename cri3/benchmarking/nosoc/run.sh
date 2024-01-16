#!/bin/bash -l
#SBATCH --job-name=quicktst
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --nodelist=compute05
#SBATCH --mem=25G

#commands
module purge
module load qe/7.0-intelmpi

srun --mpi=pmi2 pw.x -inp cri3-exp-nosoc_150Ry_k8x8x1.scf.in | tee scf-nosoc_150Ry_k8x8x1.log
