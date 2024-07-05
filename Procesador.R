#' Autor: Maria Paz Cisternas Pardo
#' Version: 24.07.04
#' Contenido:
#' Cargar los datos de los empleados desde el archivo CSV generado y almacenarlos en un data frame
#' Realizar una limpieza de datos inicial en el data frame, manejando los valores faltantes y convirtiendo los tipos de datos según sea necesario.
#' Convertir las variables categóricas, como el género y el departamento, en factores utilizando la función factor.
#' Calcular el salario promedio por departamento utilizando las funciones de agregación de dplyr.
#' Generar una tabla que muestre la cantidad de empleados por género y rango de edad utilizando las funciones de dplyr.
#' Identificar los 5 empleados con los salarios más altos y los 5 empleados con los salarios más bajos utilizando las funciones de ordenamiento y selección de dplyr.
#' Crear una visualización básica con ggplot2 que muestre la distribución de salarios por género y departamento.
#' Guardar los resultados generados en un archivo CSV.

library(dplyr)
library(ggplot2)

# Cargar los datos del archivo CSV en un data frame
Lee_csv <- function(nombre_archivo) {
  datos_empleados <- read.csv(nombre_archivo)
  return(datos_empleados)
}

# Eliminar filas con valores faltantes (si existen)
Limpia_datos <- function(datos){
  datos <- na.omit(datos)
  summary(datos_empleados)
  return(datos)
}

# Convertir la variable "genero" y "departamento" a factor
Procesado_datos <- function(datos_empleados){
  datos_empleados$genero <- factor(datos_empleados$genero, levels = c("F", "M"), labels = c("Femenino", "Masculino"))
  datos_empleados$departamento <- factor(datos_empleados$departamento, levels = c("PVP", "MKTG", "RRHH", "CF", "PROD"), labels = c("Ventas", "Marketing", "Recursos Humanos", "Finanzas", "Producción"))
  return(datos_empleados)
}

# Calcular el salario promedio por departamento
Media_salario <- function(datos_empleados){
  salario_promedio_departamento <- datos_empleados %>%
    group_by(departamento) %>%
    summarise(salario_promedio = mean(salario))
  return(salario_promedio_departamento)
}

# Crear una tabla con la cantidad de empleados por género y rango de edad
Empleados_gen_edad <- function(datos_empleados){
  empleados_por_genero_edad <- datos_empleados %>%
    group_by(genero, edad_rango = cut(edad, breaks = c(18, 25, 35, 45, 65), labels = c("18-25", "26-35", "36-45", "46+"))) %>%
    count()
  return(empleados_por_genero_edad)
}

# Identificar los 5 empleados con los salarios más altos
Salario_alto <- function(datos_empleados){
  empleados_salario_alto <- datos_empleados %>%
    arrange(desc(salario)) %>%
    head(5)
  return(empleados_salario_alto)
}

# Identificar los 5 empleados con los salarios más bajos
Salario_bajo <- function(datos_empleados){
  empleados_salario_bajo <- datos_empleados %>%
    arrange(salario) %>%
    head(5)
  return(empleados_salario_bajo)
}

Guardar_csv <- function(empleados_por_genero_edad){
  write.csv(empleados_por_genero_edad, file = "empleados_genero_edad.csv", row.names = FALSE)
}

Main <- function(){
  datos_empleados <- Lee_csv("empleados.csv")
  View(datos_empleados)
  datos_empleados <- Limpia_datos(datos_empleados)
  View(datos_empleados)
  datos_empleados <- Procesado_datos(datos_empleados)
  View(datos_empleados)
  
  salario_promedio_departamento <- Media_salario(datos_empleados)
  View(salario_promedio_departamento)
  
  empleados_por_genero_edad <- Empleados_gen_edad(datos_empleados)
  View(empleados_por_genero_edad)
  
  empleados_salario_alto <- Salario_alto(datos_empleados)
  View(empleados_salario_alto)
  
  empleados_salario_bajo <- Salario_bajo(datos_empleados)
  View(empleados_salario_bajo)

  # Crear una gráfica de violín que muestre la distribución de salarios por género y departamento
  ggplot(datos_empleados, aes(x = departamento, y = salario, fill = genero)) + geom_violin() + labs(title = "Distribución de salarios por género y departamento")
  ################################################################################################
  
  
  Guardar_csv(empleados_por_genero_edad)
  
}

