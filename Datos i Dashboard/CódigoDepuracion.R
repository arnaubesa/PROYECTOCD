# Código de R para importar datos

library(haven)

datos <- read.csv('Datos.csv')


# Código de R para depurar datos

library(dplyr)
codigos_a_eliminar <- c(66, 77, 88, 99)

datos <- datos %>%
  filter(
    !tvtot %in% codigos_a_eliminar &
      !tvpol %in% codigos_a_eliminar &
      !ppltrst %in% codigos_a_eliminar &
      !pplfair %in% codigos_a_eliminar &
      !pplhlp %in% codigos_a_eliminar
  )


# Código de R para guardar los nuevos datos

write.csv(datos, "datos_depurados.csv", row.names = FALSE)
