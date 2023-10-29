package clases;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author xubuntu
 */
public class MatrizMagica {
    int[][] matriz;
    
    public int[][] MatrizMagica(int d){
        matriz = new int[d][d];
        
        int i = 0;
        int j = matriz.length / 2;
        
        for (int k = 1; k < Math.pow(d, 2); k++) {
            matriz[i][j] = k;
            if (k % d == 0) {
                i++;
            } else {
                 i--;j--;
                 if(i < 0) i = matriz.length - 1;
                 if (j < 0) j = matriz.length - 1;
            }
            
        }
        return matriz;
    }
    
}
