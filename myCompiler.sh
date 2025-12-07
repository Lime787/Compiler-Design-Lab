#!/bin/bash

# ================================
#   JCC – Java Compiler Chain
# ================================
# Usage:
#   ./myCompiler.sh input.java [output.s]
#
# Folder layout :
#   pass1/  -> P1.l, P2.y (flex/bison)
#   pass2/  -> Java type checker
#   pass3/  -> Java IR1 generator
#   pass4/  -> Java IR2 lowering
#   pass5/  -> Java IR3 lowering
#   pass6/  -> Java MIPS generator
# ================================

set -e  # exit on first error

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <source-file> [output-file]"
    exit 1
fi

INPUT="$1"
OUTPUT="${2:-final.s}"

# ============== CONFIG: directories ==============
PASS1_DIR="Lab-1"
PASS2_DIR="Lab-2"
PASS3_DIR="Lab-3"
PASS4_DIR="Lab-4"
PASS5_DIR="Lab-5"
PASS6_DIR="Lab-6"

# ============== CONFIG: Java main classes ========
# These are the classes that have `public static void main(String[] args)`
# inside their respective directories.
PASS2_MAIN="P2"
PASS3_MAIN="P3"
PASS4_MAIN="P4"
PASS5_MAIN="P5"
PASS6_MAIN="P6"

# ============== Tools check ======================
for tool in flex bison gcc javac java; do
    if ! command -v "$tool" &> /dev/null; then
        echo "[ERROR] $tool is not installed or not in PATH"
        exit 1
    fi
done

# ============== Temp file ========================
TMP_JAVA="$(mktemp /tmp/macrofree-XXXXXX.java)"

cleanup() {
    rm -f "$TMP_JAVA"
}
trap cleanup EXIT

# =================================================
# 1. COMPILES & RUNS PASS 1 (flex/bison) in pass1/
# =================================================
echo "[myCompiler] Compiling Pass 1 (flex + bison) in '$PASS1_DIR'..."

(
    cd "$PASS1_DIR"

    flex -o P1.lex.c P1.l
    bison -d -o P1.tab.c P1.y

    g++ P1.lex.c P1.tab.c -o P1.out
)

echo "[myCompiler] Running Pass 1 (macro removal)..."

# Runs the generated executable from pass1/ directory
"$PASS1_DIR/P1.out" < "$INPUT" > "$TMP_JAVA"

# =================================================
# 2. COMPILES JAVA PASSES 2–6 in their own folders
# =================================================
echo "[myCompiler] Compiling Java passes..."

(
    cd "$PASS2_DIR"
    javac P2.java
)

(
    cd "$PASS3_DIR"
    javac P3.java
)

(
    cd "$PASS4_DIR"
    javac P4.java
)

(
    cd "$PASS5_DIR"
    javac P5.java
)

(
    cd "$PASS6_DIR"
    javac P6.java
)

echo "[myCompiler] Java passes compiled successfully."

# =================================================
# 3. RUNS PASS 2 (type checker) from pass2/
# =================================================
echo "[myCompiler] Running Pass 2 (type checking)..."

(
    cd "$PASS2_DIR"
    # Note: we pass the *path* to the macro-free file.
    java "$PASS2_MAIN" < "$TMP_JAVA"
)

# If we got here, type checking succeeded (exit code 0).

# =================================================
# 4. RUNS PASS 3 → 6 as a pipeline, each in its folder
# =================================================
echo "[myCompiler] Running Passes 3 → 6 (IR + lowering + MIPS)..."

# Each subshell `cd`s into the pass's directory and runs its main.
# All of them read from stdin and write to stdout, so we can pipe them.

(
    cd "$PASS3_DIR"
    java "$PASS3_MAIN" < "$TMP_JAVA"
) | (
    cd "$PASS4_DIR"
    java "$PASS4_MAIN"
) | (
    cd "$PASS5_DIR"
    java "$PASS5_MAIN"
) | (
    cd "$PASS6_DIR"
    java "$PASS6_MAIN"
) > "$OUTPUT"

echo "[myCompiler] Compilation successful → $OUTPUT"
