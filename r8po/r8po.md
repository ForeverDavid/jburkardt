R8PO\
Linear Algebra Utilities {#r8po-linear-algebra-utilities align="center"}
========================

------------------------------------------------------------------------

**R8PO** is a C++ library which carries out some basic linear algebra
operations on R8PO matrices (real 64 bit precision positive definite
symmetric format).

### Licensing: {#licensing align="center"}

The computer code described and made available on this web page are
distributed under [the GNU LGPL license.](../../txt/gnu_lgpl.txt)

### Languages: {#languages align="center"}

**R8PO** is available in [a C version](../../c_src/r8po/r8po.md) and
[a C++ version](../../master/r8po/r8po.md) and [a FORTRAN90
version](../../f_src/r8po/r8po.md) and [a MATLAB
version](../../m_src/r8po/r8po.md) and [a Python
version](../../py_src/r8po/r8po.md)

### Related Data and Programs: {#related-data-and-programs align="center"}

[R83](../../master/r83/r83.md), a C++ library which contains linear
algebra routines for R83 matrices (real, 64 bit, tridiagonal 3xN
format).

[R83S](../../master/r83s/r83s.md), a C++ library which contains
linear algebra routines for R83S matrices (real, 64 bit, tridiagonal
scalar format).

[R83V](../../master/r83v/r83v.md), a C++ library which contains
linear algebra routines for R83V matrices (real, 64 bit, tridiagonal
three vector format).

[R85](../../master/r85/r85.md), a C++ library which contains linear
algebra routines for R85 matrices (real, 64 bit, pentadiagonal format).

[R8BB](../../master/r8bb/r8bb.md), a C++ library which contains
linear algebra routines for R8BB matrices (real, 64 bit, border banded
format).

[R8BLT](../../master/r8blt/r8blt.md), a C++ library which contains
linear algebra routines for R8BLT matrices (real, 64 bit, band lower
triangular format).

[R8BTO](../../master/r8bto/r8bto.md), a C++ library which contains
linear algebra routines for R8BTO matrices (real, 64 bit, block Toeplitz
format).

[R8BUT](../../master/r8but/r8but.md), a C++ library which contains
linear algebra routines for R8BUT matrices (real, 64 bit, band upper
triangular format).

[R8CB](../../master/r8cb/r8cb.md), a C++ library which contains
linear algebra routines for R8CB matrices (real, 64 bit, Compressed Band
format).

[R8CBB](../../master/r8cbb/r8cbb.md), a C++ library which contains
linear algebra routines for R8CBB matrices (real, 64 bit, Compressed
Border Banded format).

[R8CC](../../master/r8cc/r8cc.md), a C++ library which contains
linear algebra routines for R8CC matrices (real, 64 bit, Compressed
Column (Colptr,Row,Value) format).

[R8GD](../../master/r8gd/r8gd.md), a C++ library which contains
linear algebra routines for R8GD matrices (real, 64 bit, general
diagonal format).

[R8GE](../../master/r8ge/r8ge.md), a C++ library which contains
linear algebra routines for R8GE matrices (real, 64 bit, General
format).

[R8LT](../../master/r8lt/r8lt.md), a C++ library which contains
linear algebra routines for R8LT matrices (real, 64 bit, lower
triangular format).

[R8LTT](../../master/r8ltt/r8ltt.md), a C++ library which contains
linear algebra routines for R8LTT matrices (real, 64 bit, lower
triangular Toeplitz format).

[R8NCF](../../master/r8ncf/r8ncf.md), a C++ library which contains
linear algebra routines for R8NCF matrices (real, 64 bit, nonsymmetric
coordinate format).

[R8PBL](../../master/r8pbl/r8pbl.md), a C++ library which contains
linear algebra routines for R8PBL matrices (real, 64 bit, positive
definite symmetric band lower format).

[R8RI](../../master/r8ri/r8ri.md), a C++ library which contains
linear algebra routines for R8RI matrices (real, 64 bit, row indexed
format).

[R8S3](../../master/r8s3/r8s3.md), a C++ library which contains
linear algebra routines for R8S3 matrices (real, 64 bit, SLAP Triad
(I,J,AIJ) format).

[R8SD](../../master/r8sd/r8sd.md), a C++ library which contains
linear algebra routines for R8SD matrices (real, 64 bit, symmetric
diagonal format).

[R8SP](../../master/r8sp/r8sp.md), a C++ library which contains
linear algebra routines for R8SP matrices (real, 64 bit, SLAP Triad
(I,J,AIJ) format).

[R8SS](../../master/r8ss/r8ss.md), a C++ library which carries out
linear algebra operations for R8SS matrices (real, 64 bit, symmetric
skyline format).

[R8STO](../../master/r8sto/r8sto.md), a C++ library which contains
linear algebra routines for R8STO matrices (real, 64 bit, symmetric
Toeplitz N format).

[R8TO](../../master/r8to/r8to.md), a C++ library which contains
linear algebra routines for R8TO matrices (real, 64 bit, Toeplitz 2\*N-1
format).

[R8UT](../../master/r8ut/r8ut.md), a C++ library which contains
linear algebra routines for R8UT matrices (real, 64 bit, upper
triangular format).

[R8UTT](../../master/r8utt/r8utt.md), a C++ library which contains
linear algebra routines for R8UTT matrices (real, 64 bit, upper
triangular Toeplitz format).

[R8VM](../../master/r8vm/r8vm.md), a C++ library which contains
linear algebra routines for R8VM matrices (real, 64 bit, Vandermonde
format).

### Source Code: {#source-code align="center"}

-   [r8po.cpp](r8po.cpp), the source code;
-   [r8po.hpp](r8po.hpp), the include file;

### Examples and Tests: {#examples-and-tests align="center"}

-   [r8po\_prb.cpp](r8po_prb.cpp), the calling program;
-   [r8po\_prb\_output.txt](r8po_prb_output.txt), the output file.

### List of Routines: {#list-of-routines align="center"}

-   **I4\_LOG\_10** returns the integer part of the logarithm base 10 of
    an I4.
-   **I4\_MAX** returns the maximum of two I4's.
-   **I4\_MIN** returns the smaller of two I4's.
-   **I4\_POWER** returns the value of I\^J.
-   **R8\_UNIFORM\_01** returns a unit pseudorandom R8.
-   **R8GE\_PRINT** prints an R8GE matrix.
-   **R8GE\_PRINT\_SOME** prints some of an R8GE matrix.
-   **R8PO\_DET** computes the determinant of a matrix factored by
    R8PO\_FA.
-   **R8PO\_DIF2** returns the second difference matrix in R8PO format.
-   **R8PO\_FA** factors an R8PO matrix.
-   **R8PO\_INDICATOR** sets up an R8PO indicator matrix.
-   **R8PO\_INVERSE** computes the inverse of a matrix factored by
    R8PO\_FA.
-   **R8PO\_ML** computes A \* x = b after A has been factored by
    R8PO\_FA.
-   **R8PO\_MM** multiplies two R8PO matrices.
-   **R8PO\_MV** multiplies an R8PO matrix times a vector.
-   **R8PO\_PRINT** prints an R8PO matrix.
-   **R8PO\_PRINT\_SOME** prints some of an R8PO matrix.
-   **R8PO\_RANDOM** randomizes an R8PO matrix.
-   **R8PO\_SL** solves a linear system that has been factored by
    R8PO\_FA.
-   **R8PO\_TO\_R8GE** copies an R8PO matrix to an R8GE matrix.
-   **R8PO\_ZEROS** zeros an R8PO matrix.
-   **R8UT\_PRINT** prints an R8UT matrix.
-   **R8UT\_PRINT\_SOME** prints some of an R8UT matrix.
-   **R8VEC\_INDICATOR1\_NEW** sets an R8VEC to the indicator1 vector
    {1,2,3...}.
-   **R8VEC\_PRINT** prints an R8VEC.
-   **R8VEC\_ZEROS\_NEW** creates and zeroes an R8VEC.
-   **TIMESTAMP** prints the current YMDHMS date as a time stamp.

You can go up one level to [the C++ source codes](../cpp_src.md).

------------------------------------------------------------------------

*Last revised on 21 August 2015.*
