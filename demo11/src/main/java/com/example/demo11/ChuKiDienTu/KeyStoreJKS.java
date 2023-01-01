package com.example.demo11.ChuKiDienTu;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.*;
import java.security.cert.CertificateException;
import java.util.Enumeration;
public class KeyStoreJKS {

    public static void createKeyStoreFile() throws IOException, InterruptedException {
        String bidanh="duy433";
        String mk="123456";
        String remk="123456";
        String tinhtp="Long An";
        String diachi="TPHCM";
        String ten ="Nguyen Van Tuong Duy";
//
//	        Process process = new ProcessBuilder("cmd.exe", "/c", "keytool -genkeypair -keyalg RSA -keysize 2048 -keystore \"C:\\Users\\LAPTOP USA PRO\\Desktop\\Key1234.keystore.jks\" -alias ancol1 -dname \"CN=NguyenDuy,OU=LongAn,O=LongAn,C=HCM\" -storepass 123456 -keypass 123456 -validity 3650").redirectErrorStream(true).start();
//	        process.waitFor();
//	        System.out.println();
        try {
            // kiểm tra ping google.com (gửi 5 gói tin)
            ProcessBuilder builder = new ProcessBuilder("cmd.exe", "/c", "keytool -genkeypair -keyalg RSA -storetype PKCS12 -keysize 2048 -keystore \"C:\\Users\\LAPTOP USA PRO\\Desktop\\Key.keystore.p12\" -alias "+bidanh+" -dname \"CN="+ten+",OU="+tinhtp+",O="+tinhtp+",C="+diachi+"\" -storepass "+mk+" -keypass "+remk+" -validity 3650");
            // thực thi command line
            System.out.println(builder);
            Process p = builder.start();
            // lấy kết quả trả về trên command line
            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line;
            while (true) {
                line = r.readLine();
                if (line == null) {
                    break;
                }
                System.out.println(line);
            }
        } catch (IOException ex) {
            System.out.println("loi Ping: " + ex.toString());
        }
    }

    public static void createSelfSignedCertificateFile(String certificateFileName)  {
        try {
            Runtime.getRuntime().exec("keytool -export -alias server1 -keystore server.keystore.jks -rfc -file " + certificateFileName);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public static Key getPrivateKeyFromKeyStore() throws UnrecoverableKeyException{
        KeyStore jks = null;
        try {
            jks = KeyStore.getInstance("JKS");
            jks.load(new FileInputStream("C:\\\\\\\\Users\\\\\\\\LAPTOP USA PRO\\\\\\\\Desktop\\\\\\\\Key.keystore.p12"),"123456".toCharArray());
            return jks.getKey("duy433","123456".toCharArray());
        } catch (KeyStoreException | IOException | NoSuchAlgorithmException | CertificateException e) {
            e.printStackTrace();
        }
        return null;
    }

    public  PublicKey getPublickeyFromKeyStore(String path,String bidanh,String pass) throws UnrecoverableKeyException, KeyStoreException, NoSuchAlgorithmException, CertificateException, FileNotFoundException, IOException{
        KeyStore keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        keystore.load(new FileInputStream(path),pass.toCharArray());
        java.security.cert.Certificate cert = keystore.getCertificate(bidanh);
        // System.out.println(cert.getPublicKey());

        return cert.getPublicKey();
    }


    public static void main(String[] args) throws IOException, InterruptedException, UnrecoverableKeyException, KeyStoreException, NoSuchAlgorithmException, CertificateException {
        KeyStoreJKS jks = new KeyStoreJKS();
//		jks.createKeyStoreFile();
//		System.out.println("..................................");
//		System.out.println(jks.getPrivateKeyFromKeyStore());

        System.out.println(	jks.getPublickeyFromKeyStore("C:\\\\\\\\Users\\\\\\\\LAPTOP USA PRO\\\\\\\\Desktop\\\\\\\\Key.keystore.p12","duy433","123456"));
        //jks.createSelfSignedCertificateFile("C:\\Users\\LAPTOP USA PRO\\Desktop\\\\server.keystore.jks");
        //System.out.println(jks.getPrivateKeyFromKeyStore());
    }
}
