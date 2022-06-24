# solución de ecuaciones de segundo grado
# x = -b +- sqrt(b^2 - 4ac) / 2a
from math import sqrt
a = float(input("Ingrese el valor de a: "))
b = float(input("Ingrese el valor de b: "))
c = float(input("Ingrese el valor de c: "))
if (a != 0 and (b**2 - 4*a*c) >= 0):
    x1 = (-b + sqrt(b**2 - 4*a*c)) / (2*a)
    x2 = (-b - sqrt(b**2 - 4*a*c)) / (2*a)
    print("Las soluciones de la ecuacion son: x1 =", x1, "|x2 =", x2)
else:
    print("La ecuacion no tiene soluciones reales")