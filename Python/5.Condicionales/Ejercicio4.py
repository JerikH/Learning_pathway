a = "Rojo"
b = "Verde"
c = "Azul"
opcion = input("Elige un candidato (A, B, C): ").replace(" ", "").upper()
if opcion == "A":
    print(f"Usted ha votado por el partido {a}")
elif opcion == "B":
    print(f"Usted ha votado por el partido {b}")
elif opcion == "C":
    print(f"Usted ha votado por el partido {c}")
else:
    print("Ha elegido una opción incorrecta")