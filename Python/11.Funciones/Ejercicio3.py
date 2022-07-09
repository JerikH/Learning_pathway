def proces():
    val1 = float(input("Ingrese el primer valor: "))
    val2 = float(input("Ingrese el segundo valor: "))
    if val1 > val2:
        return 1
    elif val1 < val2:
        return -1
    else:
        return 0

print(proces())  