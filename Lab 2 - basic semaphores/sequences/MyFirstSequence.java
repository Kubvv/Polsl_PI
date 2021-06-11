/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sequences;

import java.util.concurrent.Semaphore;

/**
 *
 * @author Rau7
 */
/* Sequence: CBAB */
public class MyFirstSequence {

    private static final int COUNT = 10; //Number of letters displayed by threads
    private static final int DELAY = 5; //delay, in milliseconds, used to put a thread to sleep

    private static final Semaphore a = new Semaphore(0, true);
    private static final Semaphore b = new Semaphore(0, true);
    private static final Semaphore c = new Semaphore(0, true);

    public static void main(String[] args) {
        new A().start(); //runs a thread defined below
        new B().start();
        new C().start();

    }

    private static final class A extends Thread { //thread definition

        @Override
        @SuppressWarnings("SleepWhileInLoop")
        public void run() {
            try {
                for (int i = 0; i < COUNT; i++) {
                    a.acquire();
                    System.out.print("A ");
                    b.release();

                    Thread.sleep(DELAY);
                }
            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
            System.out.println("\nThread A: I'm done...");
        }
    }

    private static final class B extends Thread {

        @Override
        @SuppressWarnings("SleepWhileInLoop")
        public void run() {
            try {
                for (int i = 0; i < COUNT * 2; i++) {
                    b.acquire();
                    System.out.print("B ");
                    c.release();

                    Thread.sleep(DELAY);
                }
            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
            System.out.println("\nThread B: I'm done...");
        }
    }

    private static final class C extends Thread {

        @Override
        @SuppressWarnings("SleepWhileInLoop")
        public void run() {
            try {
                for (int i = 0; i < COUNT; i++) {
                    System.out.print("C ");
                    b.release();
                    c.acquire();
                    a.release();
                    c.acquire();

                    Thread.sleep(DELAY);
                }
            } catch (InterruptedException ex) {
                System.out.println("Ooops...");
                Thread.currentThread().interrupt();
                throw new RuntimeException(ex);
            }
            System.out.println("\nThread C: I'm done...");
        }
    }
}

