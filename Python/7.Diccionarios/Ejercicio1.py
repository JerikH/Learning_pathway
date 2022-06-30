capitales = {"Guatemala": "Ciudad de Guatemala", "El Salvador": "San Salvador", "Honduras": "Tegucigalpa","Nicaragua": "Managua", "Costa Rica": "San Jose", "Panama": "Panama", "Argentina": "Buenos Aires", "Colombia": "Bogota", "Venezuela": "Caracas", "España": "Madrid"}
pais = input("Ingrese el nombre del pais a consultar: ").title()

print("El Salvador" in capitales)
if pais in capitales:
    print("La capital de", pais, "es", capitales[pais])
else:
    print("El pais ingresado no se encontro")
