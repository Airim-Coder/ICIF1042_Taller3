# Definir la función para generar datos aleatorios de empleados
generar_datos_empleado <- function(n) {
# Generar datos de nombre
nombres <- sample(c("María", "Ana", "Isabel", "Pedro", "Juan", "Carlos", "Diego", "Martín", "Laura", "Carolina"), n, replace = TRUE)

# Generar datos de apellido
apellidos <- sample(c("García", "López", "Rodríguez", "Sánchez", "González", "Fernández", "Martínez", "Pérez", "Alonso", "Moreno"), n, replace = TRUE)

# Generar datos de género
genero <- sample(c("F", "M"), n, replace = TRUE)

# Generar datos de edad
edad <- runif(n, 18, 65)

# Generar datos de departamento
departamentos <- sample(c("Ventas", "Marketing", "Recursos Humanos", "Finanzas", "Producción"), n, replace = TRUE)

# Generar datos de salario
salario <- rnorm(n, 2500, 1000)

# Crear un data frame con los datos generados
datos_empleado <- data.frame(
  nombre = nombres,
  apellido = apellidos,
  genero = genero,
  edad = edad,
  departamento = departamentos,
  salario = salario
)

# Convertir el data frame a formato CSV
write.csv(datos_empleado, file = "empleados.csv", row.names = FALSE)
}

# Generar datos para 100 empleados
generar_datos_empleado(n = 100)

# Cargar los datos del archivo CSV en un data frame
datos_empleados <- read.csv("empleados.csv")

# Verificar la presencia de valores faltantes
summary(datos_empleados)

# Eliminar filas con valores faltantes (si existen)
datos_empleados <- na.omit(datos_empleados)

# Convertir la variable "genero" a factor
datos_empleados$genero <- factor(datos_empleados$genero, levels = c("F", "M"), labels = c("Femenino", "Masculino"))

# Convertir la variable "departamento" a factor
datos_empleados$departamento <- factor(datos_empleados$departamento)

# Calcular el salario promedio por departamento
salario_promedio_departamento <- datos_empleados %>%
group_by(departamento) %>%
summarise(salario_promedio = mean(salario))

# Crear una tabla con la cantidad de empleados por género y rango de edad
empleados_por_genero_edad <- datos_empleados %>%
group_by(genero, edad_rango = cut(edad, breaks = c(18, 25, 35, 45, 65), labels = c("18-25", "26-35", "36-45", "46+"))) %>%
count()

# Identificar los 5 empleados con los salarios más altos
empleados_salario_alto <- datos_empleados %>%
arrange(desc(salario)) %>%
head(5)

# Identificar los 5 empleados con los salarios más bajos
empleados_salario_bajo <- datos_empleados %>%
arrange(salario) %>%
head(5)

# Crear una gráfica de violín que muestre la distribución de salarios por género y departamento
ggplot(datos_empleados, aes(x = departamento, y = salario, fill = genero)) +
geom_violin() +
labs(title = "Distribución de salarios por género y departamento")

# Guardar la tabla de empleados por género y rango de edad en un archivo CSV
write.csv(empleados_por_genero_edad, file = "empleados_genero_edad.csv", row.
