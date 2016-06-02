/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ponto;

import java.lang.Math;
/**
 *
 * @author Caroline
 */
public class Ponto {
    
    public int coordX;
    public int coordY;
    
    public Ponto(int coX, int coY)
    {
        coordX = coX;
        coordY = coY;
    }
    
    void deslocaPonto(int dX, int dY)
    {
        coordX = coordX + dX;
        coordY = coordY + dY;
    }
    
    void calculaDist(int x1, int y1, int x2, int y2)
    {
        int dx, dy;
        double distancia;
        dx = x2 - x1;
        dy = y2 - y1;
        distancia = Math.sqrt(dx*dx + dy*dy);
        System.out.println("Distância entre os dois pontos: %.2f " + distancia);
    }
    
}
