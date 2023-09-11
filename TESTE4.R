library(readx1)
library(sqldf) 
library(FSA)

caminho_arquivo <- ("'C:\Users\pietr\OneDrive\Documentos\pastinha\salarios.xlsx'")
salario <- read_excel(caminho_arquivo, sheet='dados')
salarios <- read_excel(caminho_arquivo, sheet='dados')
clt <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'clt'")
cnpj <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'cnpj'")
estagiario <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'estagiario'")

tabela_estagiario <-t(as.data.frame(Summarize(estagiario$salario)))
tabela_estagiario

tabela_clt <-t(as.data.frame(Summarize(clt$salario)))
tabela_clt

tabela_cnpj <-t(as.data.frame(Summarize(cnpj$salario)))
tabela_cnpj

# Moda
frequenciaEstagiario <- table(estagiario$salario)
frequenciaClt <- table(clt$salario)
frequenciaCnpj <- table(cnpj$salario)

as.numeric(names(frequenciaEstagiario[frequenciaEstagiario == max(frequenciaEstagiario)]))
as.numeric(names(frequenciaClt[frequenciaClt == max(frequenciaClt)]))
as.numeric(names(frequenciaCnpj[frequenciaCnpj == max(frequenciaCnpj)]))

cvEstagiario <- (sd(estagiario$salario)/mean(estagiario$salario)) * 100
cvClt <- (sd(clt$salario)/mean(clt$salario)) * 100
cvCnpj <- (sd(cnpj$salario)/mean(cnpj$salario)) * 100
