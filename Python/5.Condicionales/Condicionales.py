'''
#Condicional simple (if - else)
edad = 18

if edad >= 18:
    print("Eres mayor de edad")
else:
    print("Eres menor de edad")
'''	
#Condicionales compuestas (if - elif - else)
vocal = input("Ingrese una vocal: ")
if vocal.lower() == "a":
    print("Esta vocal es la A")
elif vocal.lower() == "e":
    print("Esta vocal es la E")
elif vocal.lower() == "i":
    print("Esta vocal es la I")
elif vocal.lower() == "o":
    print("Esta vocal es la O")
elif vocal.lower() == "u":
    print("Esta vocal es la U")
else:
    print("Esta NO es una vocal")