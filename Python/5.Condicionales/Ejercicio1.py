# validar si es vocal
vocal = input("Ingrese una letra: ")
vocales = ["a", "e", "i", "o", "u"]
if vocal.lower() in vocales:
    print(f"La letra '{vocal}' ingresada es una vocal")
else:
    print("La letra '{}' ingresada no es una vocal".format(vocal))