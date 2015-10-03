#!/bin/bash -l

# run this script with "sbatch runner.sh"

#SBATCH
#SBATCH --job-name=JuliaExperiment
#SBATCH --time=2
#SBATCH --partition=parallel
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24


time julia -p 10 main2.jl  > foo.out
