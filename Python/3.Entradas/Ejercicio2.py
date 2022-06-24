# calcular promedio de notas

p1 = float(input("Ingrese la nota de la primera practica: "))
p2 = float(input("Ingrese la nota de la segunda practica: "))
p3 = float(input("Ingrese la nota de la tercera practica: "))
pp = (p1 + p2 + p3) / 3
ep = float(input("Ingrese la nota del examen parcial: "))
ef = float(input("Ingrese la nota del examen final: "))
prom = (pp + 2*ep + 3*ef) / 6
print("El promedio de notas es: ", prom)