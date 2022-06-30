jugadores = {
    1 : "Casillas", 15 : "Ramos",
    3 : "Pique", 5 : "Puyol",
    11 : "Capdevila", 14 : "Xabi Alonso",
    16 : "Busquets", 8 : "Xavi Hernandez",
    18 : "Pedrito", 6 : "Iniesta",
    7 : "Villa"
}
iden = int(input("Introduce el numero del jugador: "))
if iden in jugadores:
    print("El jugador", jugadores[iden], "tiene el numero", iden)
else:
    print("Jugador no encontrado")
