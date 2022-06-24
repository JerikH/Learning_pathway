cadena = "Separar"
ins = ','
print(ins.join(cadena)) # Insertar ins en cada posición de cadena (Mejor)

print(cadena.replace('', ins)) # Reemplazar cada espacio vacío por ins (Peor)
