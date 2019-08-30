## Euclidean Division & Modulo,MIT,http://wikipedia.org/wiki/Euclidean_division
import os

const headerEuclidean = currentSourcePath().splitPath.head / "euclidean.h"

func euclideanDivision*(beDivided: cint, divideBy: cint): int {.importc, header: headerEuclidean.}
func euclideanModulo*(beDivided: cint, divideBy: cint): int {.importc, header: headerEuclidean.}


runnableExamples:
  echo "Euclideans Division\t-3 / 5 =\t",  euclideanDivision(-3.cint, 5.cint)
  echo "Nim StdLib Division\t-3 / 5 = \t", -3.cint / 5.cint, "\n"
  echo "Euclideans Modulo\t-3 mod 5 =\t",  euclideanModulo(-3.cint, 5.cint)
  echo "Nim StdLib Modulo\t-3 mod 5 =\t", -3.cint mod 5.cint

# Euclideans Division     -3 / 5 =        -1
# Nim StdLib Division     -3 / 5 =        -0.6

# Euclideans Modulo       -3 mod 5 =      2
# Nim StdLib Modulo       -3 mod 5 =      -3
