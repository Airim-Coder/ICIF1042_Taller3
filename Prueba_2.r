
# Generar datos de departamento

#depar# Definir la función para generar datos aleatorios de empleados

generar_datos_empleado <- function(n) {

# se generan dos frame
n <- n/2
# Generar datos de nombre
	nombres <- sample(c("Pablo", "Roberto", "Miguel", "Pedro", "Juan", "Carlos", "Diego", "Martín", "Jorge", "Raul"), n, replace = TRUE)

# Generar datos de apellido
	apellidos <- sample(c("García", "López", "Rodríguez", "Sánchez", "González", "Fernández", "Martínez", 	"Pérez", "Alonso", "Moreno"), n, replace = TRUE)

# Generar datos de género

	generos <- sample(c("M"), n, replace = TRUE)

# Generar datos de edad

	edades <- as.integer(runif(n, 18, 65))

# Genera datos Departamentos

	departamentos <- sample(c("Ventas", "Marketing", "Recursos Humanos", "Finanzas", "Producción"), n, 		replace = TRUE)

# Generar datos de salario

	salarios <- as.integer(rnorm(n, 2500, 1000))

# Crear un data frame con los datos generados
datos_empleados <- data.frame(
  nombre = nombres,
  apellido = apellidos,
  genero = generos,
  edad = edades,
  departamento = departamentos,
  salario = salarios
)

# Generar datos de nombre
	nombres <- sample(c("María", "Ana", "Isabel", "Paola", "Juana", "Carola", "Soledad", "Patricia", "Laura", 	"Carolina"), n, replace = TRUE)

# Generar datos de apellido
	apellidos <- sample(c("García", "López", "Rodríguez", "Sánchez", "González", "Fernández", "Martínez", 	"Pérez", "Alonso", "Moreno"), n, replace = TRUE)

# Generar datos de género

	generos <- sample(c("F"), n, replace = TRUE)

# Generar datos de edad

	edades <- as.integer(runif(n, 18, 65))

# Genera datos Departamentos

	departamentos <- sample(c("Ventas", "Marketing", "Recursos Humanos", "Finanzas", "Producción"), n, 		replace = TRUE)

# Generar datos de salario

	salarios <- as.integer(rnorm(n, 2500, 1000))

# Crear un data frame con los datos generados
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
