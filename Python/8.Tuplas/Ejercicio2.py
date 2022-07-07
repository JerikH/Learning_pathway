#tupla con las letras del alfabeto
letras = ("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
dat = int(input("Introduce el número de la letra a buscar (1 - 26): "))
print(type(letras))
if dat in range(1, 27):
    print("La letra", dat, "es", letras[dat-1])
else:
    print("La letra ingresada no se encontro")