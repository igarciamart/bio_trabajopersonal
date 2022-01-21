library(MLDataR)
tir <- MLDataR::thyroid_disease
write.csv(tir, file="dataset_tiroides.csv")

# al final de los trabajos poner

sessionInfo()

# comando order() es como si hiciera un sort de un vector

head(tir)
tir2 <- tir[order(tir$patient_age),]

# para quitar todos los valroes NA
tir_completo <- tir[complete.cases(tir),]

# agregate permite agrupar por grupos y hacer un calculo estadistico aggregate(valores,list(grupos),estadistico)

edad_tyr <- aggregate(tir_completo$patient_age,list(tir_completo$ThryroidClass),mean)

edadygenero <- aggregate(tir_completo$patient_age,list(tir_completo$ThryroidClass, tir_completo$patient_gender),mean)

#names para cambiarle el nombre a las columnas y que quede mas claro

names(edad_tyr) <- c("Tiroides", "Media")

names(edadygenero)<- c("Tiroides", "Genero","Media")

