#!/bin/bash -l
#SBATCH --job-name=quicktst
#SBATCH --nodes=1
#SBATCH --ntasks=12
#SBATCH --nodelist=compute03
#SBATCH --mem=25G

#commands
module purge
module load qe/7.0-intelmpi

#srun --mpi=pmi2 pw.x -inp cri3-exp-soc_50Ry_k8x8x1.scf.in | tee scf-soc_50Ry_k8x8x1.log
#srun --mpi=pmi2 pw.x -inp cri3-exp-soc_70Ry_k8x8x1.scf.in | tee scf-soc_70Ry_k8x8x1.log
#srun --mpi=pmi2 pw.x -inp cri3-exp-soc_90Ry_k8x8x1.scf.in | tee scf-soc_90Ry_k8x8x1.log
#srun --mpi=pmi2 pw.x -inp cri3-exp-soc_120Ry_k8x8x1.scf.in | tee scf-soc_120Ry_k8x8x1.log
srun --mpi=pmi2 pw.x -inp cri3-exp-soc_150Ry_k8x8x1.scf.in | tee scf-soc_150Ry_k8x8x1.log
