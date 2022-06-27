#validar si dos palabras riman o no
pr1 = input("Ingrese una palabra: ").replace(" ", "").lower()
pr2 = input("Ingrese otra palabra: ").replace(" ", "").lower()
#pr1 = p1.replace(" ","").lower()
#pr2 = p2.replace(" ","").lower()
if pr1[-3 : ] == pr2[-3 : ]:
    print("Las palabras riman")
elif pr1[-2 : ] == pr2[-2 : ]:
    print("Las palabras riman un poco")
else:
    print("Las palabras no riman")