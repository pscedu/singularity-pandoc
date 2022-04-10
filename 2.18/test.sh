#!/bin/bash

set -x

tree .

singularity exec singularity-pandoc-2.18.sif pandoc --help
