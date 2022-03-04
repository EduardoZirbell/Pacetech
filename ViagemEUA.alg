algoritmo "ViagemEUA"
// Função : Auxiliar um viajante
// Autor : Eduardo Zirbell
// Data : 3/3/2022
// Seção de Declarações 
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
     Escreval("Você deseja converter:")
     Escreval("1 - Converter Celsius para Fahrenreit")
     Escreval("2 - Converter Fahrenreit para Celsius")
     leia(resp_temp)
     escolha resp_temp
     caso 1
          Escreval("Informe a temperatura em °C: ")
          leia(tempC)
          tempF <- (tempC * 1.8) + 32
          Escreval("A temperatura está a ",tempF:2:1,"°F")
     caso 2
          Escreval("Informe a temperatura em °F: ")
          leia(tempF)
          tempC <- (tempF -32) / 1.8
          Escreval("A temperatura está a ",tempC:2:1,"°C")
     fimescolha

caso 2
     Escreval("Você deseja converter:")
     Escreval("1 - Converter Real para Dólar")
     Escreval("2 - Converter Dólar para Real")
     leia(resp_temp)
     escolha resp_temp
     caso 1
          Escreval("Informe a cotação do dólar: ")
          leia(cot)
          Escreval("Informe quantos reais você quer comprar de dólares: ")
          leia(reais)
          dolar <- reais / cot
          Escreval("Com R$",reais," você consegue comprar $",dolar,"!")
     caso 2
          Escreval("Informe a cotação do dólar: ")
          leia(cot)
          Escreval("Informe quantos dólares você quer comprar de reais: ")
          leia(reais)
          dolar <- reais * cot
          Escreval("Com $",dolar," você consegue comprar R$",reais,"!")
     fimescolha
fimescolha
fimalgoritmo
