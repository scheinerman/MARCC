#!/bin/bash -l

# run this script with "sbatch runner.sh"

#SBATCH
#SBATCH --job-name=JuliaExperiment
#SBATCH --time=30
#SBATCH --partition=parallel
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=24


time julia -p 45 main2.jl  > degrees.out
