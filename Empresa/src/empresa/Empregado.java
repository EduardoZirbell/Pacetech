package empresa;

public class Empregado {
    
    private String nome;
    private String sobrenome;
    private double salario;
    private double salarioA;
    
    public Empregado(String nome, String sobrenome, double salario, double salarioA){
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.salario = salario;
        this.salarioA = salarioA;
    }
    
    public void aumentoSalario(){
        this.salario = salario * 1.1;
        this.salarioA = salarioA * 1.1;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public String getNome(){
        return nome;
    }
    
    public void setSobrenome(String sobrenome){
        this.sobrenome = sobrenome;
    }
    
    public String getSobrenome(){
        return sobrenome;
    }
    
    public void setSalario(double salario){
        if (salario < 0){
            this.salario = 0;
        } else {
            this.salario = salario;
        }      
    }
  
    public double getSalario(){
        return salario;
    }
    
    public void setSalarioA(double salarioA){
        this.salarioA = salarioA;
            
    }
  
    public double getSalarioA(){
        return salarioA;
    }
}
