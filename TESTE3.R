libraly(sqldf)
clt <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'clt'")
cnpj <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'cnpj'")
estagiario <- sqldf("SELECT salario FROM salarios WHERE tipocontrato = 'estagiario'")

# Estatísticas descritivas (biblioteca)
library(FSA)
Summarize(estagiario$salario)
Summerize(clt$salario)
Summerize(cnpj$salario)

# utilizando funções individuais
# Média
mediaClt <- mean(clt$salario)
mediaCnpj <- mean(cnpj$salario)
mediaEstagiario <- mean(estagiario$salario)

# Mediana
mediaClt <- median(clt$salario)
mediaCnpj <- median(cnpj$salario)
mediaEstagiario <- median(estagiario$salario)

# Moda
frequenciaClt <- table(clt$salario)
frequenciaCnpj <- table(cnpj$salario)
frequenciaEstagiario <- table(estagiario$salario)

modaClt <- as.numeric(names(frequenciaClt[frequenciaClt == max(frequenciaClt)]))
modaCnpj <- as.numeric(names(frequenciaCnpj[frequenciaCnpj== max(frequenciaCnpj)]))
modaEstagiario <- as.numeric(names(frequenciaEstagiario[frequenciaEstagiario== max(frequenciaEstagiario)]))

# Amplitude
amplitudeClt <- max(clt$salario) - min(clt$salario)
amplitudeCnpj <- max(cnpj$salario) - min(cnpj$salario)
amplitudeEstagiario <- max(estagiario$salario) - min(estagiario$salario)

# Variância
varClt <- var(clt$salario)
varCnpj <- var(cnpj$salario)
varEstagiario <- var(estagiario$salario)

# Desvio padrão
sdClt <- sd(clt$salario)
sdCnpj <- sd(cnpj$salario)
sdEstagiario <- sd(estagiario$salario)

# Coeficiente de variação
cvClt <- (sdClt / mediaClt) * 100
cvCnpj <- (sdCnpj / mediaCnpj) * 100
cvEstagiario <- (sdEstagiario / mediaEstagiario) * 100
