#importa el valor de pi
from math import pi
def Cuadrado(base, altura):
    return base * altura

#calcula el area de un círculo
def Circulo(radio):
    return pi * (radio ** 2)

print(Cuadrado(2, 3))
print(Circulo(3)) 