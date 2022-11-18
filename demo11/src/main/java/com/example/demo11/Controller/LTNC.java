package com.example.demo11.Controller;

public class LTNC {
    public static String inhoa(String s){
        char[] chars = s.toCharArray();
        boolean check=true;
        for (int i =0;i<chars.length;i++){
            chars[i] = Character.toLowerCase(chars[i]);
            if(Character.isLetter(chars[i])){
                if(check){
                    chars[i]=Character.toUpperCase((chars[i]));
                    check=false;
                }
            }else{
                check=true;
            }
        }
        return String.valueOf(chars);
    }
    public static  String daonguocchuoi(String s){
        byte [] re = s.getBytes();
        byte [] test= new byte[s.length()];
        for(int i=0;i<re.length;i++){
            test[i]=re[re.length-i-1];
        }
        return new String(test);
    }
    public static String mahoa(String s,int key,int key1){
        String string="";
        char[] chars = s.toCharArray();
        char n;
        for(int i =0 ;i<s.length();i++){
             n=s.charAt(i);
            if('A'<=n && n<='Z' && n%2==0 ){
                n=(char) (n+key);
                if(n>'Z'){
                    n=(char)(n-'Z'+'A'-1);
                }
                string +=n;
            }else  if('a'<=n && n<='z' && i%2==0){
                n=(char) (n+key);
                if(n>'z'){
                    n=(char)(n-'z'+'a'-1);
                }
                string +=n;
            }else  if('a'<=n && n<='z' && i%2!=0){
                n=(char) (n-key1);
                if(n<'a'){
                    n=(char)(n-'a'+'z'+1);
                }
                string +=n;
            }else {
                string+=n;
            }
        }

        return string;
    }
    public static void printmtA(int[][] mta){
        for (int i =0 ;i<mta.length;i++){
            for(int j =0;j<mta.length;j++){
                System.out.print(mta[i][j]+"\t");
            }
            System.out.println();
        }
    }
    public static void printmtB(int[][] mta){
        for (int i =0 ;i<mta.length;i++){
            for(int j =0;j<mta.length;j++){
                System.out.print(mta[i][j]+"\t");
            }
            System.out.println();
        }
    }
    public static void TONGMT(int[][] mtA,int[][] mtB){
        int [][] tong =new int[3][3];
        for (int i =0 ;i<3;i++){
            for(int j =0;j<3;j++){
                tong[i][j]=mtA[i][j]+mtB[i][j];
                System.out.print(tong[i][j]+"\t");

            }
            System.out.println();
        }
    }
    public static void tich(int a[][],int b[][],int m,int n,int p) {

        int c[][] = new int[m][p];

        for(int i = 0;i<m;i++) {

            for(int j = 0;j<p;j++) {

                c[i][j] = 0;

                for(int k = 0;k<n;k++) {

                    c[i][j] = c[i][j] + a[i][k]*b[k][j];

                }

            }

        }

        for(int i = 0;i<m;i++) {

            for(int j = 0;j<p;j++) {

                System.out.print(c[i][j]+" ");



            }

            System.out.println();

        }

    }
    public static void NhanMT(int[][] mtA,int[][] mtB){
        int colum=3;
        int row=2;
        int [][] tong =new int[row][colum];
        for (int i =0 ;i<row;i++){
            for(int j =0;j<colum;j++){
                for (int k=0;k<6;k++){
                    tong[i][j]=tong[i][j]+mtA[i][k]*mtB[k][j];
                    System.out.print(tong[i][j]+"\t");
                }


            }
            System.out.println();
        }
    }
    public static void main(String[] args) {
//       String s="nguyen van duA";
//        String s1="abc";
//
//       System.out.println(inhoa(s));
//        System.out.println(daonguocchuoi(s));
//        System.out.println(mahoa(s1,3,2));
        int[][] arrA = {{1,2,3},{2,1,3},{5,1,3}};
        int[][] arrB = {{3,2,3},{2,5,3},{1,1,3}};
        int[][] arrA1 = {{1,2,3},{4,5,6}};
        int[][] arrB1 = {{7,8},{9,10},{11,12}};
        printmtA(arrA);
        System.out.println("/////////////////////////////");
        printmtB(arrB);
        System.out.println("TONG");
        TONGMT(arrA,arrB);
        System.out.println("Nhan");
        tich(arrA1,arrB1,2,3,2);

    }
}
