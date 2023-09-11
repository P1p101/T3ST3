# GRÁFICO BARRA 1
dados <- data.frame(tipoContrato = c("Estágio", "CLT","CNPJ", "Estágio", "CLT", "CNPJ"), salario = c(1517, 10741, 12883, 1517, 10756, 12883))

boxplot(dados$salario ~ dados$tipoContrato, col = 'red', main = 'Salário X Contrato')

# GRÁFICO BARRA 2
tipocontrato <- c("Estágio", "CLT","CNPJ")
salarios <- c(1517, 10741, 12883)

barplot(salarios, names.arg = tipocontrato, col = 'purple', main = 'Salário X Contrato')

# GRÁFICO 
sexo <- c("Masculino", "Feminino", "Outro")
salarios <- c(17870575, 4087987, 38833)

barplot(salarios, names.arg = sexo, col = 'yellow', main = 'Salário X Gênero')

# GRÁFICO DE BARRA
faixa_etaria <- c("17-21", "22-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-44", "55+")
salario <- c(1050, 1042, 1053, 1083, 1093, 1306, 1254, 1206, 1549)

ordem <- order(salario)
faixa_etaria <- faixa_etaria[ordem]
salario <- salario[ordem]

barplot(salario, names.arg=faixa_etaria, col = 'orange', main = 'Faixa Etaria X Salário', horiz = TRUE)
