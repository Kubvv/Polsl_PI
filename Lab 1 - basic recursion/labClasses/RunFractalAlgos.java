/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labClasses;

/**
 *
 * @author RaU7LabToCS
 */
public class RunFractalAlgos {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
 
        FractalAlgorithms alg = new FractalAlgorithms();

        /* Zad 1 Hexagon */
        alg.positioningTurtle(30);
        alg.recuHexagon(256, 2);

        /* Zad 2 EveryOtherSquare */
        /* alg.everyOtherSquares(256, 16); */

        /* Zad 3 Steep tree*/
        /*int side = 120;
        alg.forward(side);
        alg.steepTree(side - 10, 10);
        alg.right(180);
        alg.forward(side);
        alg.right(180);*/
    }
    
}
