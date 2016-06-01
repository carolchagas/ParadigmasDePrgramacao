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
public class bolachaTriangulo extends Bolacha{
    
    private double base;
    private double altura;
    
    public bolachaTriangulo(int x, int y)
    {
        Random rand = new Random();
        Ponto p = new Ponto(x*12, y*12);
        
        super.ponto = p;
        base = rand.nextDouble() * 6 + 0.1;
        altura = rand.nextDouble()* 6 + 0.1;
        super.tam = (base*altura)/2;
    }
}
