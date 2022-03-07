algoritmo "UpgradeConversor"
// Função : Converter Temperaturas
// Autor : Eduardo Zirbell
// Data : 3/6/2022
// Seção de Declarações 
var
temp_C : vetor[1..4] de real
temp_F : vetor[1..4] de real
hora : vetor[1..4] de inteiro
atemp : real
resp, i, j, ahora: inteiro

inicio
repita
Escreval("Bem vindo ao upgrade do conversor de temperaturas. Seleciona a conversão desejada:")
Escreval("1 - Celsius para Fahrenheit")
Escreval("2 - Fahrenheit para Celsius")
Escreval("3 - Sair")
Leia(resp)
escolha resp
caso 1
     para i de 1 ate 4 faca
          Escreval("Informe a",i,"ª temperatura em °C: ")
          Leia(temp_C[i])
          Escreval("Informe o horário que a",i,"ª temperatura foi medida: ")
          Leia(hora[i])
     fimpara
     para i de 1 ate 4 faca
          para j de 1 ate 4 faca
               se temp_C[j] > temp_C[i] entao
                  atemp <- temp_C[i]
                  temp_C[i] <- temp_C[j]
                  temp_C[j] <- atemp
                  ahora <- hora[i]
                  hora[i] <- hora[j]
                  hora[j] <- ahora
               fimse
          fimpara
     fimpara
     para i de 1 ate 4 faca
          temp_F[i] <- (temp_C[i] * 1.8) + 32
          Escreval("Temperatura",temp_C[i],"°C registrada as",hora[i],"h corresponde a",temp_F[i],"°F!")
     fimpara
caso 2
     para i de 1 ate 4 faca
          Escreval("Informe a",i,"ª temperatura em °F: ")
          Leia(temp_F[i])
          Escreval("Informe o horário que a",i,"ª temperatura foi medida: ")
          Leia(hora[i])
     fimpara
     para i de 1 ate 4 faca
          para j de 1 ate 4 faca
               se temp_F[j] > temp_F[i] entao
                  atemp <- temp_F[i]
                  temp_F[i] <- temp_F[j]
                  temp_F[j] <- atemp
                  ahora <- hora[i]
                  hora[i] <- hora[j]
                  hora[j] <- ahora
               fimse
          fimpara
     fimpara
     para i de 1 ate 4 faca
          temp_C[i] <- (temp_F[i] - 32) / 1.8
          Escreval("Temperatura",temp_F[i],"°F registrada as",hora[i],"h corresponde a",temp_C[i],"°C!")
     fimpara

caso 3
     Escreval("O programa será encerrado!")
outrocaso
     Escreval("A opção digitada é inválida!")
fimescolha
ate resp = 3
fimalgoritmo
