# Proyecto Base de Datos

Fecha entrega integrantes: 11 de mayo 23:59 horas

El portavoz de cada grupo debe entregar un fichero donde aparezca el nombre del equipo, el nombre y los apellidos de los integrantes y el nombre y los apellidos del portavoz del grupo.
Fecha límite de entrega del proyecto: 29 de mayo 23:59 horas


Fechas defensa proyecto: 30 de mayo y 1 de junio

El portavoz de cada grupo deberá entregar los siguientes ficheros en Classroom:

Memoria del proyecto en formato PDF firmada por los 3 integrantes del grupo.
Presentación usada para la defensa en formato PDF.
Documento .sql que permita crear la BBDD del proyecto, así como las tablas y los datos de muestra insertados.
Documento/s .py del programa demo desarrollado.

## 1. Diseño Base de Datos

### 1.1 Planteamiento del problema

Se desea diseñar la base de datos de un Centro Docente:
* En la base de datos se desea guardar los datos de los profesores del Centro
Docente (DNI, nombre, email, dirección, teléfono y salario).
* Los profesores imparten módulos, y cada módulo tiene un código, un nombre y una
cantidad de horas anuales.
* Cada alumno está matriculado en uno o varios módulos.
* De cada alumno se desea guardar el DNI, nombre, apellidos, fecha de nacimiento y
teléfonos de contacto.
* Los profesores pueden impartir varios módulos, pero un módulo sólo puede ser
impartido por un profesor.

### 1.2 Ficheros necesarios para el diseño de la Base de Datos

1. Modelo Entidad Relación
2. Modelo Relacional normalizado hasta la Tercera Forma Normal
3. Modelo Físico (SQL)
4. Inserta datos de muestra para la demo (Al menos 60 alumnos, 10 módulos y 5
   profesores)

## 2. Desarrollo del programa Demo

Crea un programa DEMO usando el lenguaje de programación Python que cumpla los
siguientes requisitos:

Requisitos funcionales:

* RF1 - Debe permitir registrar un nuevo alumno.
* RF2 - Debe permitir matricular a un alumno en un módulo.
* RF3 - Debe permitir eliminar a un alumno de la base de datos.
* RF4 - Debe permitir mostrar un listado con todos los módulos, el nombre del
profesor que lo imparte y el número de alumnos matriculados.
* RF5 - Debe permitir mostrar un listado de todos los alumnos del centro.

Requisitos NO funcionales:

* RNF1 - No se debe permitir registrar alumnos cuyo dni ya esté registrado.
* RNF2 - No se debe permitir matricular alumnos en módulos que no existan.
* RNF3 - El listado de alumnos debe implementar un sistema de paginación para
mostrar los alumnos de cinco en cinco.
* RNF4 - El listado de alumnos debe mostrar la edad de los alumnos.

## 3. Memoria del Proyecto

La memoria del proyecto debe contener al menos los siguientes puntos:
1. PORTADA (CON EL NOMBRE DE LOS INTEGRANTES DEL GRUPO)
2. ÍNDICE
3. DIAGRAMA ENTIDAD-RELACIÓN
4. MODELO RELACIONAL
5. SQL CREACIÓN DE BASE DE DATOS Y TABLAS
6. CONSULTAS SQL USADAS EN EL PROGRAMA DEMO
7. MUESTRA DE FUNCIONAMIENTO DEL PROGRAMA DEMO
8. TIEMPO DE DESARROLLO INDIVIDUALIZADO EN HORAS
9. DIFICULTADES ENCONTRADAS
10. ANEXO I - CÓDIGO PROGRAMA PYTHON

## 4. Documento a entregar

El portavoz de cada grupo debe entregar los siguientes ficheros en Classroom:
1. Memoria del proyecto en formato PDF
2. Presentación usada para la defensa en formato PDF
3. Documento .SLQ que permita crear la BBDD del proyecto, así como las tablas y los
   datos de muestra insertados.
4. Documento/s .PY del programa demo desarrollado.