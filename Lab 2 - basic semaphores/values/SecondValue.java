/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package values;

import java.util.concurrent.Semaphore;

/**
 *
 * @author Rau7
 */
/* Sum: 22 */
public class SecondValue {

    private static int A = 0;
    private static int B = 0;
    private static int C = 3;
    
    private static final int SLEEP = 1;

    private static final Semaphore StopAll = new Semaphore(0, true);
    private static final Semaphore SemaC = new Semaphore(0);
    private static final Semaphore WriteSema = new Semaphore(0);

    public static void main(String[] args) {
        new P2().start();
        new P1().start();
        new P3().start();
        new P4().start();
    }

    private static final class P1 extends Thread {

        @Override
        public void run() {
            try {
                Thread.sleep(SLEEP);
                StopAll.acquire();
                A = 10;

                B = B + 5;

                C = C + A;

                Thread.sleep(SLEEP);
                System.out.println("Thread P1 is done...");

            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
        }
    }

    private static final class P2 extends Thread {

        @Override
        public void run() {
            try {
                Thread.sleep(SLEEP);
                
                B = B + C;
                SemaC.release();
                A = A + B;
                SemaC.release();
                StopAll.acquire();

                Thread.sleep(SLEEP);
                System.out.println("Thread P2 is done...");

            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
        }
    }

    private static final class P3 extends Thread {

        @Override
        public void run() {
            try {
                Thread.sleep(SLEEP);

                SemaC.acquire();
                C = B + 10;
                SemaC.acquire();
                A = 2 * A;
                WriteSema.release();
                StopAll.acquire();
                B = B + A;

                Thread.sleep(SLEEP);
                System.out.println("Thread P3 is done...");

            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
        }
    }

    private static final class P4 extends Thread {

        @Override
        public void run() {
            try {
                Thread.sleep(SLEEP);
                WriteSema.acquire();
                System.out.println("Sum result: " + A + " + " + B + " + " + C + " = " + (A + B + C));
                StopAll.release(3);
                Thread.sleep(SLEEP);
                System.out.println("Thread P4 is done...");

            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
        }
    }


    
}
