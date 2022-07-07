#tupla con los meses del año
meses = ("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre")
dat = int(input("Introduce el número del mes a buscar (1 - 12): "))
if dat in range(1, 13):
    print("El mes", dat, "es", meses[dat - 1])
else:
    print("El mes ingresado no se encontró")