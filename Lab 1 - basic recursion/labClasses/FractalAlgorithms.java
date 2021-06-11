package labClasses;

import turtlePck.TurtleGraphicsWindow;

/**
 *
 * @author Rau7LabToCS
 */
public class FractalAlgorithms extends TurtleGraphicsWindow {

    
    public void recuHexagon(int side, int minSide) {
        if (side < minSide)
        {
            return;
        }
        for (int i = 0; i < 6; i++)
        {
            recuHexagon(side / 3, minSide);
            forward(side);
            right(60);
        }
    }

    public void everyOtherSquares(int side, int minSide)
    {
        if (side < minSide)
        {
            return;
        }
        for (int i = 0; i < 4; i++) {
            forward(side);
            if (i % 2 == 1) {
                left(90);
                everyOtherSquares(side / 2, minSide);
                left(180);
            }
            else
            {
                right(90);
            }
        }
    }

    public void steepTree(int side, int minSide)
    {
        if (side < minSide)
        {
            return;
        }

        left(20);
        forward(side);
        steepTree(side-10, minSide);
        left(180);
        forward(side);
        left(140);
        forward(side);
        steepTree(side-10, minSide);
        left(180);
        forward(side);
        right(160);
    }

    public void positioningTurtle(int angle) {
        right(angle);
    }

    public void sierpinski(int side, int minSide) {
        if (side < minSide) {
            return;
        }
        for (int i = 1; i < 4; i++) {
            sierpinski(side / 2, minSide);
            forward(side);
            right(120);
        }
    }

}
