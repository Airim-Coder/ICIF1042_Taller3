# Lee csv

Lee_csv <- function(nombre_archivo) {

	Datos_Leidos <-  read.csv(nombre_archivo,header=TRUE)

	head(Datos_Leidos)

}