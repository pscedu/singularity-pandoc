#!/bin/bash

set -x

tree .

singularity exec singularity-pandoc-2.2.1.sif pandoc --help
