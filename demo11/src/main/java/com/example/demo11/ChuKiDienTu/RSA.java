package com.example.demo11.ChuKiDienTu;

import javax.crypto.Cipher;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.util.ArrayList;

public class RSA {
    public final String ALGORITHM = "RSA";
    public final int MAX_ENCRYPTION_BLOCK_SIZE = 117;
    public final int MAX_DECRYPTION_BLOCK_SIZE = 128;
    PrivateKey aPrivate;
    PublicKey aPublic;
    RSAPublicKey Pu;
    RSAPrivateKey Pri;
    KeyPairGenerator kpg ;
    public  void SaveKey(PublicKey publickey,PrivateKey privatekey,String path) throws NoSuchAlgorithmException, FileNotFoundException, IOException {
//	KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
//	kpg.initialize(2048);
//	KeyPair kp = kpg.generateKeyPair();
        aPrivate = privatekey;
        aPublic = publickey;
        try (FileOutputStream outPrivate = new FileOutputStream(path+"keyprivate.txt")) {
            outPrivate.write(aPrivate.getEncoded());
        }
//"F:\\key/keypri.txt"
        //"F:\\key/keypub.txt"
        try (FileOutputStream outPublic = new FileOutputStream(path+"keypublic.txt")) {
            outPublic.write(aPublic.getEncoded());
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    public byte[] encrypt(byte[] plaintext, PublicKey key) {

        byte[] ciphertext = null;

        try {
            final Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.ENCRYPT_MODE, key);

            int textDivisions = (int) Math.ceil((double) plaintext.length / MAX_ENCRYPTION_BLOCK_SIZE);
            ArrayList<ArrayList<Byte>> completePlainText = new ArrayList<ArrayList<Byte>>();

            int k = 0;
            for (int i = 0; i < textDivisions; i++) {
                completePlainText.add(new ArrayList<Byte>());
                for (int j = 0; j < MAX_ENCRYPTION_BLOCK_SIZE; j++) {
                    if (k < plaintext.length) {
                        completePlainText.get(i).add(plaintext[k]);
                        k++;
                    }
                }
            }

            ArrayList<ArrayList<Byte>> completeCipherText = new ArrayList<ArrayList<Byte>>();

            for (int i = 0; i < completePlainText.size(); i++) {

                byte[] auxPlainText = new byte[completePlainText.get(i).size()];
                for (int j = 0; j < auxPlainText.length; j++) {
                    auxPlainText[j] = completePlainText.get(i).get(j).byteValue();
                }
                completeCipherText.add(new ArrayList<Byte>());
                byte[] auxCipherText = cipher.doFinal(auxPlainText);
                for (int j = 0; j < auxCipherText.length; j++) {
                    completeCipherText.get(i).add(Byte.valueOf(auxCipherText[j]));
                }
            }
            ArrayList<Byte> auxFinalCipherText = new ArrayList<Byte>();
            for (int i = 0; i < completeCipherText.size(); i++) {
                for (int j = 0; j < completeCipherText.get(i).size(); j++) {
                    auxFinalCipherText.add(completeCipherText.get(i).get(j));
                }
            }
            ciphertext = new byte[auxFinalCipherText.size()];
            for (int i = 0; i < ciphertext.length; i++) {
                ciphertext[i] = auxFinalCipherText.get(i);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return ciphertext;
    }

    public byte[] decrypt(byte[] ciphertext, PrivateKey key) {

        byte[] plaintext = null;

        try {

            final Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(Cipher.DECRYPT_MODE, key);
            int textDivisions = (int) Math.ceil((double) ciphertext.length / MAX_DECRYPTION_BLOCK_SIZE);
            byte[][] completeCipherText = new byte[textDivisions][MAX_DECRYPTION_BLOCK_SIZE];
            int k = 0;
            for (int i = 0; i < textDivisions; i++) {
                for (int j = 0; j < MAX_DECRYPTION_BLOCK_SIZE; j++) {
                    completeCipherText[i][j] = ciphertext[k];
                    k++;
                }
            }

            ArrayList<ArrayList<Byte>> completePlainText = new ArrayList<ArrayList<Byte>>();

            for (int i = 0; i < completeCipherText.length; i++) {

                completePlainText.add(new ArrayList<Byte>());

                byte[] auxPlainText = cipher.doFinal(completeCipherText[i]);
                for (int j = 0; j < auxPlainText.length; j++) {
                    completePlainText.get(i).add(Byte.valueOf(auxPlainText[j]));
                }
            }
            ArrayList<Byte> auxFinalPlainText = new ArrayList<Byte>();
            for (int i = 0; i < completePlainText.size(); i++) {
                for (int j = 0; j < completePlainText.get(i).size(); j++) {
                    auxFinalPlainText.add(completePlainText.get(i).get(j));
                }
            }
            plaintext = new byte[auxFinalPlainText.size()];
            for (int i = 0; i < plaintext.length; i++) {
                plaintext[i] = auxFinalPlainText.get(i);
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return plaintext;
    }

}
