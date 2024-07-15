package com;

import java.util.Scanner;

public class Practice {
    private static double i;

    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);
        int q = scanner.nextInt();
        for(int i=0;i<q;i++){
            int a = scanner.nextInt();
            int b = scanner.nextInt();
            int n = scanner.nextInt();
            int calc = a;
            for(int j=0;j<n;j++)
            {
                calc+=(Math.pow(2,j)*b);
                System.out.print(calc+" ");
            }
            System.out.println();
        }
        scanner.close();
    }
}
