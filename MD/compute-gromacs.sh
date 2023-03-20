#!/usr/bin/env bash

#SBATCH --job-name=
#SBATCH --account=
#SBATCH --partition=compute
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=24
#SBATCH --time=48:00:00
#SBATCH --output=gromacs-compute.o%j.%N

module purge
module load gromacs/2018.3
module list
source "${GROMACSHOME}/bin/GMXRC"
printenv

time -p mpirun -np 1 echo 8 | gmx_mpi pdb2gmx -f input.pdb -o alk_processed.gro -water tip3p
time -p mpirun -np 1 gmx_mpi editconf -f alk_processed.gro -o alk_newbox.gro -c -d 1.2
time -p mpirun -np 1 gmx_mpi solvate -cp alk_newbox.gro -cs spc216.gro -o alk_solv.gro -p topol.top
time -p mpirun -np 1 gmx_mpi grompp -f ions.mdp -c alk_solv.gro -p topol.top -o ions.tpr -maxwarn 1
time -p mpirun -np 1 echo 13 | gmx_mpi genion -s ions.tpr -o alk_solv_ions.gro -p topol.top -pname NA -nname CL -conc 0.150000 -neutral
time -p mpirun -np 1 gmx_mpi grompp -f minim.mdp -c alk_solv_ions.gro -p topol.top -o em.tpr
time -p mpirun -np 1 gmx_mpi mdrun -v -deffnm em
time -p mpirun -np 1 gmx_mpi grompp -f nvt.mdp -c em.gro -r em.gro -p topol.top -o nvt.tpr
time -p mpirun -np 1 gmx_mpi mdrun -deffnm nvt
time -p mpirun -np 1 gmx_mpi grompp -f npt.mdp -c nvt.gro -r nvt.gro -t nvt.cpt -p topol.top -o npt.tpr
time -p mpirun -np 1 gmx_mpi mdrun -deffnm npt
time -p mpirun -np 1 gmx_mpi grompp -f production.mdp -c npt.gro -t npt.cpt -p topol.top -o production_01.tpr

time -p mpirun gmx_mpi mdrun -nb cpu -pin on -resethway -noconfout -deffnm production_01

