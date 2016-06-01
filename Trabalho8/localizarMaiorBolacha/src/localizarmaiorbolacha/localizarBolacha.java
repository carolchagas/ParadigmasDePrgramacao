/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package localizarmaiorbolacha;

import java.util.ArrayList;
import java.util.Random;

/**
 *
 * @author Caroline
 */
public class localizarBolacha {
    
    public static void main (String[] args)
    {
        ArrayList <Bolacha> b = new ArrayList<>();
        Random rand = new Random();
        
        int x, y; 
        double maiorB = 0;
        
        for(x = 1; x <= 5; x++)
        {
            for(y = 1; y <= 10; y++)
            {
                switch(rand.nextInt(3))
                {
                    case 0:
                        b.add(new bolachaCirculo(x,y));
                        break;
                    case 1:
                        b.add(new bolachaTriangulo(x,y));
                        break;
                    case 2:
                        b.add(new bolachaRetangulo(x,y));
                        break;
                }
            }
        }
        
        for(Bolacha bolachinhas : b)
        {
            System.out.println("Tam bolacha: " + bolachinhas.tam);
            if(bolachinhas.tam > maiorB)
                maiorB = bolachinhas.tam;
        }
        System.out.println("Maior bolacha: " + maiorB);
    }
    
}
