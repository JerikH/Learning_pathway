v1 = int(input("Ingrese el rango menor: "))	
v2 = int(input("Ingrese el rango mayor: "))
for j in range(v1, v2 + 1):
    if j % 2 != 0:
        print(j)