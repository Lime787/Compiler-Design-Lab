# Compiler-Design-Lab

Writing a compiler for a subset of java, divided into various lab exercises/stages as part of CS3310 Course at IIT Madras.

## Overview
This repository contains the **implementation of a compiler** that handles a subset of the Java language (Macro Java).  
The description for **Macro Java** and other intermediate represtations can be found at https://www.cse.iitm.ac.in/~krishna/cs3300/subsets.html  
There are 4 IR stages before reaching the final MIPS Assembly code :-
- MiniJava - very close to MacroJava.
- MiniIR - its an IR in with most of the language abstractions have been removed
- MicroIR - further simplification of MiniIR 
- MiniRA - very close to final MIPS Assembly code.

Detailed descriptions of these Languages can be found at the same link shared above.

## Project Structure
### Module 1: PreProcessing and Lexical/Syntax Analysis
- Lexical and syntax analysis was done using flex and bison.
- Macros are replaced by expressions.
- This module outputs MiniJava as output.

### Module 2: Semantic Analysis (written in Java)
- Expects MiniJava code as input.
- I used JavaCC and JTB to generate the AST of MiniJava and its Visitor Pattern.
- The code here type checks the input program and outputs simple errors in case of failures.

**JavaCC and JTB have been for all modules below in similar use case.**
### Module 3: MiniJava to MiniIR (written in Java)
- Expects MiniJava code as input.
- The code here writes a semantically equivalent MiniIR program from the input Minijava code.

### Module 4: MiniIR to MicroIR (written in Java)
- Similar to Lab3 converts MiniIR code to MicroIR code

### Module 5: MicroIR to MiniRA (written in Java)
- converts MicroIR code to MiniRA code

### Module 6: MiniRA to MIPS Assembly (written in Java)
- converts MiniRA to MIPS Assembly code

## Build and Run
1. Compile the code (expects flex, bison, javac, java, g++ to be present in the system)
```bash
./myCompiler.sh inputProgram.java [output.s]
```
2. running the MIPS Assembly code (expects Spim or qtspim to be installed in the system)
```bash
./runspim.sh program.s
```
3. running all testcases in a folder
Compiles and runs the code in each file and outputs the results into outputs folder
```bash
./run_all.sh testcases
```
## Other Comments
1. Bash files were generated with the help of llms
2. The **outputs** folder contains corresponding MIPS Assembly code to each MacroJava file in the **testcases** folder