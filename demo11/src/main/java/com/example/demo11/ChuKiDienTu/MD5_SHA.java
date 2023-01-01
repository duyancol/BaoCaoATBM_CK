package com.example.demo11.ChuKiDienTu;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5_SHA {
    public static String MD2 ="MD2";
    public static String MD5 ="MD5";
    public static String SHA256 ="SHA-256";
    public static String SHA1 ="SHA-1";
    public static String SHA2 ="SHA-384";
    String name;
    MessageDigest md;

    private MD5_SHA(String name) {
        super();
        this.name = name;
        try {
            this.md=MessageDigest.getInstance(this.name);
        } catch (NoSuchAlgorithmException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.exit(1);
        }
    }
    public static MD5_SHA getInstance(String name) {
        return new MD5_SHA(name);

    }
    public String hash(String data) {
        if(this.md==null) return "";
        byte[] out=	this.md.digest(data.getBytes());
        BigInteger bi = new BigInteger(1,out);



        return bi.toString(16);

    }
    public String hasFile(String path) {
        if(this.md==null) return "";
        File f = new File(path);
        if(f.exists()) {

            try {
                DigestInputStream dis = new DigestInputStream(new BufferedInputStream(new FileInputStream(f)),this.md);
                int i;
                byte [] buff = new  byte[1024];
                do {
                    i=dis.read(buff);
                }while(i!=-1);
                BigInteger bi = new BigInteger(1,dis.getMessageDigest().digest());
                return bi.toString(16);
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

        }
        return " ";

    }
    public static void main(String[] args) {
        MD5_SHA  hash = MD5_SHA.getInstance(MD5_SHA.MD2);
        //	MD5_SHA  sha = MD5_SHA.getInstance(MD5_SHA.SHA);
        //	System.out.println(hash.hash("DAI HOC NONG LAM"));
        System.out.println(hash.hasFile("F:\\root.docx"));
        System.out.println(hash.hash("nguyenvanduy"));

        //	System.out.println(sha.hasFile("F:\\root.docx"));
        //	System.out.println(sha.hash("nguyenvanduy"));

    }


}
