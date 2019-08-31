# Euclidean

- [Euclidean Division and Euclidean Modulo](https://en.wikipedia.org/wiki/Euclidean_division) for [Nim.](https://nim-lang.org)


# Use

```nim
import euclidean

echo euclideanDivision(-3, 5)  # -3 / 5
echo euclideanModulo(-3, 5)    # -3 mod 5
```

- You can use `import euclideanDivision as eDiv` or similar for short name, etc.
- You can use `import euclideanModulo as eMod` or similar for short name, etc.
- Remember results will be different than standard library Divison and Modulo.
- No dependencies. Uses `limits.h`.


# FAQ

- This already exists in the Standard Library on `math.floorDiv`, `math.floorMod` ?
- This already exists in the Standard Library on `system./`, `system.mod` ?

**Nim**
```nim
from math import floorDiv, floorMod

echo "system.`/` Versus euclidean.euclideanDivision:"
echo "\tEuclideans Division\t-3 / 5 =\t",     euclideanDivision(-3.cint, 5.cint)
echo "\tNim StdLib Division\t-3 / 5 = \t",    -3.cint / 5.cint, "\n"

echo "system.`mod` Versus euclidean.euclideanModulo:"
echo "\tEuclideans Modulo\t-3 mod 5 =\t",     euclideanModulo(-3.cint, 5.cint)
echo "\tNim StdLib Modulo\t-3 mod 5 =\t",     -3.cint mod 5.cint, "\n\n"

echo "math.floorDiv Versus euclidean.euclideanDivision:"
echo "\tEuclideans Division\t5 / -3 =\t",     euclideanDivision(5.cint, -3.cint)
echo "\tNim Floor  Division\t5 / -3 = \t",    floorDiv(5, -3), "\n"

echo "math.floorMod Versus euclidean.euclideanModulo:"
echo "\tEuclideans Modulo\t5 mod -3 =\t",     euclideanModulo(5.cint, -3.cint)
echo "\tNim Floor  Modulo\t5 mod -3 = \t",  floorMod(5, -3)
```

**Results**
```
system.`/` Versus euclidean.euclideanDivision:
        Euclideans Division     -3 / 5 =        -1
        Nim StdLib Division     -3 / 5 =        -0.6

system.`mod` Versus euclidean.euclideanModulo:
        Euclideans Modulo       -3 mod 5 =      2
        Nim StdLib Modulo       -3 mod 5 =      -3


math.floorDiv Versus euclidean.euclideanDivision:
        Euclideans Division     5 / -3 =        -1
        Nim Floor  Division     5 / -3 =        -2

math.floorMod Versus euclidean.euclideanModulo:
        Euclideans Modulo       5 mod -3 =      2
        Nim Floor  Modulo       5 mod -3 =      -1
```
