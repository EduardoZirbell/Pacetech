algoritmo "ViagemEUA"
// Fun��o : Auxiliar um viajante
// Autor : Eduardo Zirbell
// Data : 3/3/2022
// Se��o de Declara��es 
var
resp, resp_temp, resp_moeda : inteiro
tempC, tempF, cot, reais, dolar : real
inicio
Escreval("Bem vindo ao programa ViagemEUA!")
Escreval("1 - Converter Temperaturas")
Escreval("2 - Converter Moedas")
leia(resp)
escolha resp
caso 1
     Escreval("Voc� deseja converter:")
     Escreval("1 - Converter Celsius para Fahrenreit")
     Escreval("2 - Converter Fahrenreit para Celsius")
     leia(resp_temp)
     escolha resp_temp
     caso 1
          Escreval("Informe a temperatura em �C: ")
          leia(tempC)
          tempF <- (tempC * 1.8) + 32
          Escreval("A temperatura est� a ",tempF:2:1,"�F")
     caso 2
          Escreval("Informe a temperatura em �F: ")
          leia(tempF)
          tempC <- (tempF -32) / 1.8
          Escreval("A temperatura est� a ",tempC:2:1,"�C")
     fimescolha

caso 2
     Escreval("Voc� deseja converter:")
     Escreval("1 - Converter Real para D�lar")
     Escreval("2 - Converter D�lar para Real")
     leia(resp_temp)
     escolha resp_temp
     caso 1
          Escreval("Informe a cota��o do d�lar: ")
          leia(cot)
          Escreval("Informe quantos reais voc� quer comprar de d�lares: ")
          leia(reais)
          dolar <- reais / cot
          Escreval("Com R$",reais," voc� consegue comprar $",dolar,"!")
     caso 2
          Escreval("Informe a cota��o do d�lar: ")
          leia(cot)
          Escreval("Informe quantos d�lares voc� quer comprar de reais: ")
          leia(reais)
          dolar <- reais * cot
          Escreval("Com $",dolar," voc� consegue comprar R$",reais,"!")
     fimescolha
fimescolha
fimalgoritmo
