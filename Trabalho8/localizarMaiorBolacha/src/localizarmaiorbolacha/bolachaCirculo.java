/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package localizarmaiorbolacha;
import java.util.Random;
import ponto.Ponto;

/**
 *
 * @author Caroline
 */
public class bolachaCirculo extends Bolacha{
    
    private double raio;
    
    public bolachaCirculo(int x, int y)
    {
        Random rand = new Random();
        Ponto p = new Ponto(x*12, y*12);
        
        super.ponto = p;
        raio = rand.nextDouble() * 6 + 0.1;
        super.tam = Math.PI * Math.pow(raio, 2);
    }
    
}
