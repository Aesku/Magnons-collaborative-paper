#!/bin/bash -l
#SBATCH --job-name=NiBr2nscf
#SBATCH --nodes=1
#SBATCH --ntasks=24
#SBATCH --nodelist=compute02
#SBATCH --mem=12G

#commands
module purge
module load qe/7.0-intelmpi

srun --mpi=pmi2 pw.x -inp cri3-exp.scf.in
