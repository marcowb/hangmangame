def divisors(num):
    divisors = []
    for i in range(1, num + 1):
        if num % i == 0:
            divisors.append(i)
    return divisors

def run():
    try:
        num = int(input("Ingresa un numero: "))
        assert  num > 0, "Debes ingresar un numero positivo"
        print(divisors(num))
        print("termino mi programa ")
    except ValueError:
        print("debes ingresar un numero  ")


if __name__=="__main__":
    run()