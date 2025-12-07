#!/bin/bash

# Usage:
#   ./run_all.sh testcases

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <testcases-folder>"
    exit 1
fi

TESTDIR="$1"
OUTDIR="outputs"

# create results dir if not exists
mkdir -p "$OUTDIR"

# loop over all .java files
for file in "$TESTDIR"/*.java; do
    [ -e "$file" ] || continue  # skip if no .java files

    fname=$(basename "$file" .java)     # e.g., t1.java -> t1
    echo "=== Running test: $fname ==="

    # create result folder for this test
    TESTOUT="$OUTDIR/$fname"
    mkdir -p "$TESTOUT"

    # ---------- STEP 1: compile using your compiler script ----------
    ./myCompiler.sh "$file" "$TESTOUT/$fname.s"

    # ---------- STEP 2: run SPIM and capture output ----------
    ./runspim.sh "$TESTOUT/$fname.s" > "$TESTOUT/output.txt"

    echo "Saved: $TESTOUT/"
done
