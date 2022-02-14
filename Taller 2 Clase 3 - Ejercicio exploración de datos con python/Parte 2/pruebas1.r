absolute_path <- "D:\\Juanpa\\U\\Semestre 9\\Visualización de Datos\\Tareas\\Taller 2 Clase 3 - Ejercicio exploración de datos con python\\Parte 2" # nolint
csv_path <- "NHANES2009-2012.csv"
path <- paste(absolute_path, csv_path, sep = "\\")
df <- read.csv(path, header = TRUE)

# graph the correlation matrix
install.packages("ggplot2")
library(ggplot2)
ggplot(df, aes(x = Age, y = BMI)) + geom_point() + geom_smooth(method = "lm")
