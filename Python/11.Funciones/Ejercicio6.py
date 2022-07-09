def longitud(*lista):
    return len(lista)

def pedir_elemento():
    global lista
    lista = []
    print("A continuación podrá ingresar elementos para la lista, digite 'salir' para terminar")
    while True:
        elemento = input("Ingrese un elemento para la lista: ")
        if elemento == "salir":
            break
        else:
            lista.append(elemento)
        
pedir_elemento()
print("La longitud de la lista es: ", longitud(lista))

