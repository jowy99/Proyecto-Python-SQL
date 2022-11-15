import mysql.connector
from datetime import datetime

miBBDD = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="Proyecto"
)

miCursor = miBBDD.cursor()

def diasAAnios(dias):
    return int(dias / 365)

def conversorCodigoModuloID(modulo):
    miCursor.execute("SELECT * FROM MODULO")
    misModulos = miCursor.fetchall()

    for fila in misModulos:
        if fila[1] == modulo:
            return fila[0]

def conversorDNIID(dni):
    miCursor.execute("SELECT * FROM ALUMNO")
    misAlumnos = miCursor.fetchall()

    for fila in misAlumnos:
        if fila[1] == dni:
            return fila[0]

def comprobarModulo(modulo):
    miCursor.execute("SELECT * FROM MODULO")

    misModulos = miCursor.fetchall()
    estado = True

    for i in misModulos:
        if i[0] == modulo:
            estado = False
    return estado

def comprobarDNIAlumno(dni):
    miCursor.execute("SELECT * FROM ALUMNO")
    misAlumnos = miCursor.fetchall()
    esta = False

    for fila in misAlumnos:
        if fila[1] == dni:
            esta = True
    return esta

def getListaAlumnos(posicion):
    miCursor.execute("SELECT * FROM edad_alumnos LIMIT %s, 5", [posicion])
    misAlumnos = miCursor.fetchall()
    return misAlumnos

def imprimirLista(lista):
    for i in lista:
        print(i)

opcion = 0
nombrePrograma = "FlahseandoMuros2000"

print("\nBienvenid@ a " + nombrePrograma)
while opcion != "6":
    print("\nElige una opción")
    print("Opción 1: Registrar nuevo alumno")
    print("Opción 2: Matricular alumno a módulo")
    print("Opción 3: Eliminar alumno")
    print("Opción 4: Listar módulos, profesor y numero alumnos")
    print("Opción 5: Listar alumnos del centro")
    print("Opción 6: Salir")

    opcion = input("\nSeleccione opción: ")

    if opcion == "1":

        sqlString = "INSERT INTO ALUMNO (DNI, Nombre, Apellidos, Fecha_Nacimiento, Telefono) VALUES (%s, %s, %s, %s, %s)"

        print("\nRegistrar nuevo alumno\n")
        dni = input("Introduzca su DNI: ").upper()
        if comprobarDNIAlumno(dni.upper()):
            print("DNI ya registrado.")
            continue
        nombre = input("Introduzca su nombre: ")
        apellidos = input("Introduzca su apellido: ")
        fechaNacimiento = input("Introduzca la fecha de nacimiento (año-mes-dia): ")
        telefono = input("Introduzca su número de teléfono: ")

        datos = [dni, nombre, apellidos, fechaNacimiento, telefono]

        miCursor.execute(sqlString, datos)
        miBBDD.commit()

        print("\nAlumno añadido correctamente.")

    elif opcion == "2":

        sqlAsociar = "INSERT INTO ALUMNO_MATRICULADO_MODULO (ID_ALUMNO, ID_MODULO) VALUES (%s, %s)"

        print("\nMatricular alumno a módulo\n")
        dni = input("DNI del Alumno: ").upper()
        if comprobarDNIAlumno(conversorDNIID(dni.upper())):
            print("\nAlumno encontrado.")
        modulo = int(input("Código del módulo: "))
        if comprobarModulo(conversorCodigoModuloID(modulo)):
            print("\nNo existe el módulo.")
            continue

        dni = conversorDNIID(dni.upper())
        modulo = conversorCodigoModuloID(modulo)
        asociar = [dni, modulo]
        miCursor.execute(sqlAsociar, asociar)
        miBBDD.commit()

        print("\nAlumno matriculado correctamente.")

    elif opcion == "3":

        sqlEliminar = "DELETE FROM ALUMNO WHERE id= %s"

        print("\nEliminar Alumno\n")
        dni = input("DNI del Alumno: ").upper()
        if comprobarDNIAlumno(dni.upper()):
            print("DNI del alumno encontrado.")
        else:
            continue

        delet = [conversorDNIID(dni)]

        miCursor.execute(sqlEliminar, delet)
        miBBDD.commit()

        print("Alumno eliminado correctamente.")

    elif opcion == "4":

        sqlListarProfesoresModulos = "SELECT * FROM listado_profesores_modulos"

        print("\nListar módulos profesores y alumnos\n")


        miCursor.execute(sqlListarProfesoresModulos)
        listadoProfesModulos = miCursor.fetchall()
        miBBDD.commit()

        imprimirLista(listadoProfesModulos)

    elif opcion == "5":
        pagina = 1
        tecla = ""
        while tecla != "S":
            print("\nListar alumnos")
            miCursor.execute("SELECT ceil(COUNT(*) / 5) FROM edad_alumnos")
            totalPaginas = int(miCursor.fetchall()[0][0])

            misAlumnos = getListaAlumnos((pagina - 1) * 5)

            print("\n")
            imprimirLista(misAlumnos)
            print("\nD - AVANZAR\t\t\t\tA - RETROCEDER\t\t\t\tS - SALIR")
            print("Página ", pagina, " de ", totalPaginas)
            tecla = input().upper()

            if tecla == "D":
                pagina += 1
            elif tecla == "A":
                pagina -= 1
            elif tecla.isdigit():
                pagina = int(tecla)

            if pagina > totalPaginas:
                pagina = totalPaginas
            elif pagina < 1:
                pagina = 1

miCursor.close()
miBBDD.close()