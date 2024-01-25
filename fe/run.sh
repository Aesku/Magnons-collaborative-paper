#!/bin/bash -l
#SBATCH --job-name=magnonFe
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --nodelist=compute01
#SBATCH --mem=50G

#commands
module purge
module load qe/7.0-intelmpi

srun --mpi=pmi2 pw.x -inp fe-nosoc.scf.in | tee scf-nosoc.log
