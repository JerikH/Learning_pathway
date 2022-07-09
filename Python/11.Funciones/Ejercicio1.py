lista = []
par = []
impar = []
decimal = []

def to_num(str):
    if '-' in str:
        cpy = str.replace("-", "")
        if "." in cpy:
            return float(cpy) * -1
        else:
            return int(cpy) * -1
    else:
        if "." in str:
            return float(str)
        else:
            return int(str)

def pedir_numero():
    print("A continuación podrá ingresar valores para la lista, digite 'salir' para terminar")
    while True:
        numero = input("Ingrese un número: ").lower().replace(" ", "")
        if numero == "salir":
            break
        else:
            cpy = numero.replace("-", "").replace(".", "")
            if cpy.isdigit():
                lista.append(to_num(numero))
            else:
                print("\tEl valor ingresado no es un número ni el comando 'salir'.")

def ordenar(lista):
    for i in lista:
        if type(i) == int or i % 2 == 0:
            if i % 2 == 0:
                par.append(i)
            else:
                impar.append(i)
        else:
            decimal.append(i)

def mostrar(lista):
    for i in lista:
        if i != lista[-1]: #bug: al imprimir si el elemento es igual al último hace salto de línea
            print(i, end=", ")
        else:
            print(i)

pedir_numero()
ordenar(lista)
print("\nLa lista completa es: ", end = ""); mostrar(lista)
print("\nLa lista de pares es: ", end = ""); mostrar(par)
print("\nLa lista de impares es: ", end = ""); mostrar(impar)
print("\nLa lista de decimales es: ", end = ""); mostrar(decimal)