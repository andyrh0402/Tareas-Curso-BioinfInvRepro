#Script_Pregunta_1

#Session_SetWorkingDirectory_ChooseDirectory_"BioinfInvRepro2017-II-master/Unidad6/Prac_Uni6/maices/bin"
#Para cargar el archivo
fullmat<-read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt")

#Para ver ??Qu?? tipo de objeto creamos al cargar la base?
class(fullmat)

#Para ver las primeras seis l??neas del archivo
head(fullmat)

#Para responder ??Cu??ntas muestras hay?
nrow(fullmat)

#Para ver ??De cu??ntos estados se tienen muestras?
length(unique(fullmat$Estado))

#Para saber ??Cu??ntas muestras fueron colectadas antes de 1980?
length(fullmat$A..o._de_colecta[which(fullmat$A..o._de_colecta < 1980)])

#Para saber ??Cu??ntas muestras hay de cada raza?
summary(fullmat$Raza)

#Para saber en promedio, ??a qu?? altitud fueron colectadas las muestras?
mean(fullmat$Altitud)

#Para ver ??a qu?? altitud m??xima y m??nima fueron colectadas?
max(fullmat$Altitud)
min(fullmat$Altitud)

#Para crear una nueva data frame de datos s??lo con las muestras de la raza Olotillo
df.olotillo<-subset(fullmat, fullmat$Raza == "Olotillo")

#Para crear una nueva data frame, que contenga s??lo las muestras de la raza Reventador, Jala y Ancho
df.rejaan<-subset(fullmat, Raza=="Reventador"|Raza=="Jala"|Raza=="Ancho")

#Para escribir la matriz anterior a un archivo llamado "submat.cvs" en /meta
write.csv(df.rejaan, file="../meta/submat.csv")


