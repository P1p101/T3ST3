library(readx1)
library(sqldf) 
library(FSA)

caminho_arquivo <- ("'C:\Users\pietr\OneDrive\Documentos\pastinha\salarios.xlsx'")
salario <- read_excel(caminho_arquivo, sheet='dados')
salarios <- read_excel(caminho_arquivo, sheet='dados')
masculino <- sqldf("SELECT salario FROM salarios WHERE sexo = 'masculino'")
feminino <- sqldf("SELECT salario FROM salarios WHERE sexo = 'feminino'")
outro<- sqldf("SELECT salario FROM salarios WHERE sexo = 'outro'")


tabela_outro <-t(as.data.frame(Summarize(outro$salario)))
tabela_outro

tabela_feminino <-t(as.data.frame(Summarize(feminino$salario)))
tabela_feminino

tabela_masculino <-t(as.data.frame(Summarize(masculino$salario)))
tabela_masculino


# Moda
frequenciaOutro<- table(outro$salario)
frequenciaFeminino <- table(feminino$salario)
frequenciaMasculino <- table(masculino$salario)

as.numeric(names(frequenciaOutro[frequenciaOutro == max(frequenciaOutro)]))
as.numeric(names(frequenciaFeminino[frequenciaFeminino == max(frequenciaFeminino)]))
as.numeric(names(frequenciaMasculino[frequenciaMasculino == max(frequenciaMasculino)]))

cvOutro <- (sd(outro$salario)/mean(outro$salario)) * 100
cvFeminino <- (sd(feminino$salario)/mean(feminino$salario)) * 100
cvMasculino <- (sd(masculino$salario)/mean(masculino$salario)) * 100

library(sqldf)

outro <- sqldf("SELECT salario FROM salarios WHERE sexo = 'outro'")
feminino <- sqldf("SELECT salario FROM salarios WHERE sexo = 'feminino'")
masculino <- sqldf("SELECT salario FROM salarios WHERE sexo = 'masculino'")

library(FSA)
Summarize(outro$salario)
Summerize(feminino$salario)
Summerize(masculino$salario)


# utilizando funções individuais
# Média
mediaOutro <- mean(outro$salario)
mediaFeminino <- mean(feminino$salario)
mediaMasculino <- mean(masculino$salario)

# Mediana
mediaOutro <- median(outro$salario)
mediaFeminino <- median(feminino$salario)
mediaMasculino <- median(masculino$salario)

# Moda
frequenciaOutro <- table(outro$salario)
frequenciaFeminino <- table(feminino$salario)
frequenciaMasculino <- table(masculino$salario)

modaOutro <- as.numeric(names(frequenciaOutro[frequenciaOutro == max(frequenciaOutro)]))
modaFeminino <- as.numeric(names(frequenciaFeminino[frequenciaFeminino == max(frequenciaFeminino)]))
modaMasculino <- as.numeric(names(frequenciaMasculino[frequenciaMasculino == max(frequenciaMasculino)]))

# Amplitude
amplitudeOutro <- max(outro$salario) - min(outro$salario)
amplitudeFeminino <- max(feminino$salario) - min(feminino$salario)
amplitudeMasculino <- max(masculino$salario) - min(masculino$salario)

# Variância
varOutro <- var(outro$salario)
varFeminino <- var(feminino$salario)
varMasculino <- var(masculino$salario)

# Desvio padrão
sdOutro <- sd(outro$salario)
sdFeminino <- sd(feminino$salario)
sdMasculino <- sd(masculino$salario)

# Coeficiente de variação
cvOutro <- (sdOutro / mediaOutro) * 100
cvFeminino <- (sdFeminino / mediaFeminino) * 100
cvMasculino <- (sdMasculino / mediaMasculino) * 100
