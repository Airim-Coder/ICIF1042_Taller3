#' Autor: Maria Paz Cisternas Pardo
#' Version: 24.07.03
#' Contenido:
#' Generar un archivo CSV llamado "empleados.csv" que contenga los datos de los empleados
#' Los datos deben ser generados aleatoriamente utilizando funciones de R para simular escenarios realistas.


generar_datos_empleados <- function(n) {
  
  # se generan dos frame
  n <- n/2
  
  # Generar datos de edad
  edades <- as.integer(runif(n, 18, 65))
  # Generar datos de apellido
  apellidos <- sample(c("Robertson","Tran","Patel","Lee","Floyd","Brown","White","Hall","Martin","Davis","Lambert","Scott",NA), n, replace = TRUE)
  # Genera datos Departamentos
  departamentos <- sample(c("PVP", "MKTG", "RRHH", "CF", "PROD",NA), n, 		replace = TRUE)
  # Generar datos de salario
  salarios <- as.integer(rnorm(n, 2500, 1000))
  
  # Generar datos de nombres masculinos
  nombres <- sample(c("Mitchell", "Ethan", "Jesus", "Noah", "Liam", "Daniel"), n, replace = TRUE)
  generos <- sample(c("M"), n, replace = TRUE)
  
  # Crear un data frame con los datos generados para empleados
  datos_empleados <- data.frame(
    nombre = nombres,
    apellido = apellidos,
    genero = generos,
    edad = edades,
    departamento = departamentos,
    salario = salarios
  )
  
  # Generar datos de nombre
  nombres <- sample(c("María", "Lily", "Ava", "Olivia", "Evelyn", "Sophia"), n, replace = TRUE)
  generos <- sample(c("F"), n, replace = TRUE)
  
  # Crear un data frame con los datos generados para empleadas
  datos_empleadas <- data.frame(
    nombre = nombres,
    apellido = apellidos,
    genero = generos,
    edad = edades,
    departamento = departamentos,
    salario = salarios
  )
  
  ################ prueba  ###########
  datos_empleado <- rbind(datos_empleados,datos_empleadas)
  #####################################
  
  # Convertir el data frame a formato CSV
  write.csv(datos_empleado, file = "empleados.csv", row.names = FALSE)
  
}



