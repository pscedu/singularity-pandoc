#!/bin/bash

set -x

tree .

singularity exec singularity-pandoc-3.1.1.sif pandoc --help
