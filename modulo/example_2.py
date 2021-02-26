import funcs.func_1 as ff1
import funcs.func_2
from funcs.func_3 import saludo_3

print('inicio de programa')
numero = ff1.saludo()

if __name__ == '__main__':
    print("este archivo importara y ejecutura las funciones")
    ff1.saludo()
    print(numero)
    saludo_3()
