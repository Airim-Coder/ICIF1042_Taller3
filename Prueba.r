
# Generar datos de departamento

#depar# Definir la función para generar datos aleatorios de empleados

generar_datos_empleado <- function(n) {

# Generar datos de nombre
	nombres <- sample(c("María", "Ana", "Isabel", "Pedro", "Juan", "Carlos", "Diego", "Martín", "Laura", 	"Carolina"), n, replace = TRUE)

# Generar datos de apellido
	apellidos <- sample(c("García", "López", "Rodríguez", "Sánchez", "González", "Fernández", "Martínez", 	"Pérez", "Alonso", "Moreno"), n, replace = TRUE)

# Generar datos de género

	generos <- sample(c("F", "M"), n, replace = TRUE)

# Generar datos de edad

	edades <- as.integer(runif(n, 18, 65))

# Genera datos Departamentos

	departamentos <- sample(c("Ventas", "Marketing", "Recursos Humanos", "Finanzas", "Producción"), n, 		replace = TRUE)

# Generar datos de salario

	salarios <- as.integer(rnorm(n, 2500, 1000))

# Crear un data frame con los datos generados
datos_empleado <- data.frame(
  nombre = nombres,
  apellido = apellidos,
  genero = generos,
  edad = edades,
  departamento = departamentos,
  salario = salarios
)

################ prueba  ###########
datos_empleado <- rbind(datos_empleado,datos_empleado)
#####################################

# Convertir el data frame a formato CSV
write.csv(datos_empleado, file = "empleados.csv", row.names = FALSE)

}
