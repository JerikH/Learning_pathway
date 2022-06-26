# invertir minúsculas y mayúsculas

a = input("Escribe una vocal en minuscula: ")
b = input("Escribe una letra en mayuscula: ")
a = a.upper()
b = b.lower()
print(a, b) # concantación con comas
print(a + b) # concantación con + (suma de cadenas)
print("{}{}".format(a, b)) # formato con {}