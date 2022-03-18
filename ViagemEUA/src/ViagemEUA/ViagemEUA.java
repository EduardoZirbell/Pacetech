package ViagemEUA;

import java.util.Scanner;

public class ViagemEUA {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        double tempF, tempC, cot, reais, dolar;
        int resp2, resp3;
        String resp = "S";
        while(resp.equalsIgnoreCase("S")){
            System.out.println("Bem vindo ao programa ViagemEUA!");
            System.out.println("1 - Converter Temperaturas");
            System.out.println("2 - Converter Moedas");
            resp2 = teclado.nextInt();
            switch(resp2){
                case 1: 
                    System.out.println("Voc� deseja converter: ");
                    System.out.println("1 - Converter Celsius para Fahrenreit");
                    System.out.println("2 - Converter Fahrenreit para Celsius");
                    resp3 = teclado.nextInt();
                    switch (resp3){
                        case 1:
                            System.out.println("Informe a temperatura em �C: ");
                            tempC = teclado.nextDouble();
                            tempF = (tempC * 1.8) + 32;
                            System.out.println("A temperatura est� a "+String.format("%.2f", tempF)+"�F");
                            break;
                        case 2:
                            System.out.println("Informe a temperatura em �F: ");
                            tempF = teclado.nextDouble();
                            tempC = (tempF - 32) / 1.8;
                            System.out.println("A temperatura est� a "+String.format("%.2f",tempC)+"�C");                       
                            break;
                        }
                    break;
                case 2:
                    System.out.println("Voc� deseja converter: ");
                    System.out.println("1 - Converter Real para D�lar");
                    System.out.println("2 - Converter D�lar para Real");
                    resp3 = teclado.nextInt();
                    switch (resp3){
                        case 1:
                            System.out.println("Informe a cota��o do d�lar: ");
                            cot = teclado.nextDouble();
                            System.out.println("Informe quantos reais voc� quer comprar de d�lares: ");
                            reais = teclado.nextDouble();
                            dolar = reais / cot;
                            System.out.println("Com R$"+reais+" voc� consegue comprar $"+String.format("%.2f",dolar)+"!");
                            break;
                        case 2:
                            System.out.println("Informe a cota��o do d�lar: ");
                            cot = teclado.nextDouble();
                            System.out.println("Informe quantos d�lares voc� quer comprar de reais: ");
                            dolar = teclado.nextDouble();
                            reais = dolar * cot;
                            System.out.println("Com $"+dolar+" voc� consegue comprar R$"+String.format("%.2f",reais)+"!");                   
                    }
            }
            System.out.println("Deseja continuar?");
            resp = teclado.next();
        }
    }   
}
