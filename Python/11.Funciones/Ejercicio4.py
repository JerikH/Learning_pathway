def to_num(str):
    if "." in str:
        return float(str)
    else:
        return int(str)

def main():
    print("Bienvenido al servicio de facturación!")
    print("Por favor, ingrese los siguientes datos:")
    monto = input("Ingrese el monto a facturar (se toman solo valores positivos): ").replace(",", ".").replace(" ", "").replace("$", "").replace("€", "").replace("-", "")
    if monto.replace(".", "").isdigit():
        iva = input("Ingrese el IVA a aplicar en porcentaje(se toman solo valores positivos): ").replace("%", "").replace(",", ".").replace(" ", "").replace("-", "")
        if iva.replace(".", "").isdigit():
            print("El monto a pagar es: $", facturar(to_num(monto), to_num(iva)))
        else:
            print(f"No se reconoció el IVA ingresado {iva}. Utilizando porcentaje estándar (21%)\nEL monto a pagar es: $", facturar(to_num(monto), 21))
    else:
        print(f"No se reconoció el monto ingresado {monto}, No es posible facturar.")

def facturar(monto, iva):
    return monto + (monto * iva / 100)

main()