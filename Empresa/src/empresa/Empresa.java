package empresa;
import java.util.Scanner;

public class Empresa {

    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);
        String nome, sobrenome;
        double salario;
        System.out.println("Informe o nome do 1° empregado: ");
        nome = teclado.next();
        System.out.println("Informe o sobrenome do 1° empregado: ");
        sobrenome = teclado.next();
        System.out.println("Informe o salário mensal do 1° empregado: ");
        salario = teclado.nextDouble();
        Empregado empregado1 = new Empregado(nome,sobrenome,salario,salario*12);
        System.out.println("Informe o nome do 2° empregado: ");
        nome = teclado.next();
        System.out.println("Informe o sobrenome do 2° empregado: ");
        sobrenome = teclado.next();
        System.out.println("Informe o salário mensal do 2° empregado: ");
        salario = teclado.nextDouble();
        Empregado empregado2 = new Empregado(nome,sobrenome,salario,salario*12);
        
        System.out.println("Nome do 1° empregado: "+empregado1.getNome()+" "+empregado1.getSobrenome());
        System.out.println("E o seu salário mensal é: R$"+String.format("%.2f",empregado1.getSalario()));
        System.out.println("E o seu salário anual é: R$"+String.format("%.2f",empregado1.getSalarioA()));
        empregado1.aumentoSalario();
        System.out.println("E o seu salário mensal após o aumento é: R$"+String.format("%.2f",empregado1.getSalario()));
        System.out.println("E o seu salário anual após o aumento é: R$"+String.format("%.2f",empregado1.getSalarioA()));

        System.out.println("Nome do 2° empregado: "+empregado2.getNome()+" "+empregado2.getSobrenome());
        System.out.println("E o seu salário mensal é: R$"+String.format("%.2f",empregado2.getSalario()));
        System.out.println("E o seu salário anual é: R$"+String.format("%.2f",empregado2.getSalarioA()));
        empregado2.aumentoSalario();
        System.out.println("E o seu salário mensal após o aumento é: R$"+String.format("%.2f",empregado2.getSalario()));
        System.out.println("E o seu salário anual após o aumento é: R$"+String.format("%.2f",empregado2.getSalarioA()));
    }
    
}
