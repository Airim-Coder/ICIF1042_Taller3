# ICIF1042_Taller3
Tema: Manipulación y análisis de datos utilizando el lenguaje de programación R 

En este proyecto de la Unidad 3, tendrás la oportunidad de aplicar los conceptos y habilidades 

de manipulación y análisis de datos utilizando las herramientas básicas de R que has aprendido 

en el curso. A través de la resolución de un enunciado práctico, podrás demostrar tu capacidad 

para procesar, limpiar y analizar datos de manera efectiva. 

El proyecto consiste en tres enunciados diferentes, cada uno de ellos presentando un contexto 

y objetivos específicos. Los enunciados abarcan el análisis de datos de ventas de una tienda de 

electrónica, el análisis de datos de empleados de una empresa y el análisis de datos de una 

encuesta de satisfacción del cliente. Cada enunciado requerirá que generes archivos CSV con 

datos aleatorios, realices una limpieza de datos, manipules data frames, apliques técnicos de 

análisis utilizando dplyr y crees visualizaciones básicas con ggplot2. 

Para fomentar la diversidad en los análisis, se te asignará aleatoriamente uno de los tres 

enunciados para que trabajes en él de forma individual. Es importante que te pongas en contacto 

con el profesor para recibir tu enunciado asignado y comenzar a trabajar en el proyecto. 

Recuerda que, independientemente del enunciado que se te asigne, tendrás la oportunidad de 

aplicar los conceptos clave del análisis de datos con R y demostrar tu comprensión de los temas 

abordados en el curso. Aprovecha esta oportunidad para fortalecer tus habilidades y obtener 

experiencia práctica en el manejo y análisis de datos con R. 

Rúbrica de Evaluación:

1. Generación correcta del archivo CSV con datos aleatorios (10 puntos) 

a. Creación del archivo CSV requerido (5 puntos) 

b. Generación de datos aleatorios utilizando funciones de R (5 puntos) 

2. Carga correcta del archivo CSV y almacenamiento en un data frame (5 puntos) 

a. Carga de los datos desde el archivo CSV utilizando R (5 puntos) 

3. Limpieza de datos y manejo de valores faltantes (10 puntos) 

a. Identificación y manejo adecuado de los valores faltantes (5 puntos) 

b. Conversión de los tipos de datos según sea necesario (5 puntos) 

4. Manipulación de datos utilizando dplyr (20 puntos) 

a. Aplicación de las funciones de dplyr para el análisis de datos (10 puntos) 

b. Generación de tablas y resúmenes estadísticos utilizando dplyr (10 puntos) 

5. Creación de visualizaciones básicas con ggplot2 (15 puntos) 

a. Selección adecuada del tipo de gráfico según los datos (5 puntos) 

b. Configuración y personalización de la visualización (5 puntos) 

c. Interpretación de los resultados obtenidos a partir de la visualización (5 puntos) 

6. Guardado de los resultados en un archivo CSV (5 puntos) 

a. Exportación de los resultados generados a un archivo CSV (5 puntos) 

7. Claridad, estructura y documentación del código (15 puntos) 

a. Organización y legibilidad del código (5 puntos) 

b. Uso de comentarios para explicar el propósito del código (5 puntos) 

c. Documentación adecuada de las funciones y pasos realizados (5 puntos)
8. Informe del proyecto (20 puntos) 

a. Estructura y organización del informe (5 puntos) 

b. Explicación clara de los pasos realizados y las decisiones tomadas (5 puntos) 

c. Presentación de los resultados y visualizaciones (5 puntos) 

d. Conclusiones y reflexiones sobre el proyecto (5 puntos) 

Total: 100 puntos 

Notas Extras 

1. En informe incluya cualquier supuesto extra (con su debida justificación) que haya 

realizado o dificultad presentada. Por ejemplo, si desea cambiar el delimitador entre 

etiquetas a valores, explique porque decidió hacerlo. 

2. En la tapa del informe debe claramente indicar los nombres (máximo 3) de los alumnos 

que participaron en el desarrollo de la tarea. 

3. El informe debe contener al menos 3 secciones, introducción donde se presenta el 

proyecto, desarrollo, donde explica el software desarrollado, como se debe ejecutar, 

incluir capturas de pantallas y una sección de conclusiones donde discuta las 

dificultades y los aspectos que aprendió del proyecto. Como se distribuyó el trabajo el 

grupo. 

4. Debe crear un archivo zip que incluya el informe de la tarea en formato pdf y los dos 

programas solicitados. El nombre de este archivo zip DEBE ser: 

Tarea_3_Taller_Software_DS_Apellido_Nombre.zip (Donde Nombre y Apellido es el 

nombre y apellido del alumno que envía la tarea) 

5. El envío del archivo zip debe ser por email a patricio.galdames@uss.cl. El asunto de su 

correo DEBE ser Tarea 3 Taller de Software Data Science 

6. Tiempo para realizar tarea/proyecto: 3 Semanas
Enunciado 1: Análisis de datos de ventas de una tienda de electrónica 

## Enunciado 1: Análisis de datos de ventas de una tienda de electrónica

### Contexto: 

Una tienda de electrónica desea analizar sus datos de ventas para obtener información 

relevante y tomar decisiones estratégicas. Los datos de ventas incluyen información sobre el ID 

de venta, el ID de producto, el nombre del producto, la categoría, el precio unitario y la cantidad 

vendida. 

### Objetivos: 

Aplicar los conceptos de manipulación y análisis de datos utilizando las herramientas básicas 

de R, como vectores, matrices, data frames y funciones de dplyr, para procesar los datos de 

ventas de la tienda y generar informes que respondan a las preguntas planteadas. 

### Requerimientos: 

1. Generar un archivo CSV llamado "ventas.csv" que contenga los datos de ventas. Los datos deben ser generados aleatoriamente utilizando funciones de R para simular escenarios realistas. 
2. Cargar los datos de ventas desde el archivo CSV generado y almacenarlos en un data frame. 
3. Realizar una limpieza de datos inicial en el data frame, manejando los valores faltantes y convirtiendo los tipos de datos según sea necesario. 
4. Generar un informe que muestre el total de ventas por categoría de producto utilizando las funciones de dplyr. 
5. Calcular el precio promedio de los productos en cada categoría utilizando las funciones de agregación de dplyr. 
6. Identificar los 5 productos más vendidos y los 5 productos menos vendidos utilizando las funciones de ordenamiento y selección de dplyr. 
7. Crear una visualización básica con ggplot2 que muestre la distribución de precios de los productos por categoría. 
8. Guardar los resultados generados en un archivo CSV.
Enunciado 2: Análisis de datos de empleados de una empresa 

## Enunciado 2: Análisis de datos de empleados de una empresa

### Contexto: 

Una empresa desea analizar los datos de sus empleados para comprender mejor la distribución demográfica y los salarios. Los datos de los empleados incluyen información sobre el ID del empleado, el nombre, la edad, el género, el departamento y el salario anual. 

### Objetivos: 

Utilizar las herramientas básicas de R, como vectores, factores, data frames y funciones de dplyr, para analizar los datos de los empleados y generar informes estadísticos que permitan a la empresa tomar decisiones informadas. 

### Requerimientos: 

1. Generar un archivo CSV llamado "empleados.csv" que contenga los datos de los empleados. Los datos deben ser generados aleatoriamente utilizando funciones de R para simular escenarios realistas. 
2. Cargar los datos de los empleados desde el archivo CSV generado y almacenarlos en un data frame. 
3. Realizar una limpieza de datos inicial en el data frame, manejando los valores faltantes y convirtiendo los tipos de datos según sea necesario. 
4. Convertir las variables categóricas, como el género y el departamento, en factores utilizando la función `factor()`. 
5. Calcular el salario promedio por departamento utilizando las funciones de agregación de dplyr. 
6. Generar una tabla que muestre la cantidad de empleados por género y rango de edad 
(18-25, 26-35, 36-45, 46+) utilizando las funciones de dplyr. 
7. Identificar los 5 empleados con los salarios más altos y los 5 empleados con los salarios 
más bajos utilizando las funciones de ordenamiento y selección de dplyr. 
8. Crear una visualización básica con ggplot2 que muestre la distribución de salarios por 
género y departamento. 
9. Guardar los resultados generados en un archivo CSV.

## Enunciado 3: Análisis de datos de una encuesta de satisfacción del cliente 

### Contexto: 
Una empresa de servicios realizó una encuesta de satisfacción del cliente y desea analizar los 
resultados para identificar áreas de mejora. Los datos de la encuesta incluyen información sobre 
el ID de la respuesta, la edad del cliente, el género, la categoría del servicio y la calificación de 
satisfacción (en una escala del 1 al 5). 
### Objetivos: 
Utilizar las herramientas básicas de R, como vectores, factores, matrices, data frames y 
funciones de dplyr, para analizar los datos de la encuesta de satisfacción del cliente y generar 
informes estadísticos que permitan a la empresa identificar áreas de mejora. 
Requerimientos: 
1. Generar un archivo CSV llamado "encuesta.csv" que contenga los datos de la encuesta. 
Los datos deben ser generados aleatoriamente utilizando funciones de R para simular 
escenarios realistas. 
2. Cargar los datos de la encuesta desde el archivo CSV generado y almacenarlos en un 
data frame. 
3. Realizar una limpieza de datos inicial en el data frame, manejando los valores faltantes 
y convirtiendo los tipos de datos según sea necesario. 
4. Convertir las variables categóricas, como el género y la categoría del servicio, en factores 
utilizando la función `factor()`. 
5. Calcular la calificación promedio de satisfacción por categoría de servicio utilizando las 
funciones de agregación de dplyr. 
6. Generar una tabla que muestre la cantidad de respuestas por género y rango de edad 
(18-25, 26-35, 36-45, 46+) utilizando las funciones de dplyr. 
7. Identificar las 3 categorías de servicio con las calificaciones de satisfacción más altas y 
las 3 categorías con las calificaciones más bajas utilizando las funciones de 
ordenamiento y selección de dplyr. 
8. Crear una visualización básica con ggplot2 que muestre la distribución de calificaciones 
de satisfacción por categoría de servicio y género. 
9. Guardar los resultados generados en un archivo CSV.
