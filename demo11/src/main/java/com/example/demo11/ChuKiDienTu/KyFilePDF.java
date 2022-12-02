package com.example.demo11.ChuKiDienTu;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.util.Enumeration;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

//import org.apache.avalon.framework.logger.Logger;
//import org.apache.fop.apps.Driver;
//import org.apache.fop.apps.FOPException;
//import org.apache.fop.messaging.MessageHandler;
import org.xml.sax.InputSource;

//import com.lowagie.text.DocumentException;
//import com.lowagie.text.Element;
//import com.lowagie.text.Image;
//import com.lowagie.text.Rectangle;
//import com.lowagie.text.pdf.BaseFont;
//import com.lowagie.text.pdf.PdfContentByte;
//import com.lowagie.text.pdf.PdfEncryptor;
//import com.lowagie.text.pdf.PdfImage;
//import com.lowagie.text.pdf.PdfReader;
//import com.lowagie.text.pdf.PdfSignatureAppearance;
//import com.lowagie.text.pdf.PdfStamper;
//import com.lowagie.text.pdf.PdfWriter;

public class KyFilePDF {
    private String passwordKeystore="123456";
    private String tr="manalAlias";
    private String keystore="C:\\\\Users\\\\LAPTOP USA PRO\\\\Desktop\\\\myKeyStore.jks";
    Enumeration<String> enumeration = null;
    String alias = null;
    private void copyFile(File in, File out) throws IOException {
        FileInputStream fis = new FileInputStream(in);
        FileOutputStream fos = new FileOutputStream(out);
        byte[] buf = new byte[1024];
        int i = 0;
        while ((i = fis.read(buf)) != -1) {
            fos.write(buf, 0, i);
        }
        fis.close();
        fos.close();
    }
//    private void signDocument(String pdfFileName) {
//        try {
//            // Object tmpDir;
//            // 1. copy
//            File tmpPDFFile = new File("F:\\atbm-12.pdf");
//            copyFile(new File(pdfFileName), tmpPDFFile);
//            // 2. sign
//            KeyStore ks = KeyStore.getInstance("JKS");
////            enumeration = ks.aliases();
////            alias = enumeration.nextElement();
//            FileInputStream fis = new FileInputStream(keystore);
//            ks.load(fis, passwordKeystore.toCharArray());
//            PrivateKey key = (PrivateKey) ks.getKey(tr, passwordKeystore.toCharArray());
//            Certificate[] chain = ks.getCertificateChain(tr);
//            PdfReader reader = new PdfReader(tmpPDFFile.getAbsolutePath());
//            FileOutputStream fout = new FileOutputStream("F://c.pdf");
//            PdfStamper stp = PdfStamper.createSignature(reader, fout, '\0');
//            PdfSignatureAppearance sap = stp.getSignatureAppearance();
//            System.out.println(key);
//            sap.setCrypto(key, chain, null, PdfSignatureAppearance.WINCER_SIGNED);
//
//            //sap.setImage(new
//            sap.setVisibleSignature(new Rectangle(360, 730, 550, 0), 2, null);
//
//
//            stp.close();
//            fis.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    public static void main(String[] args) throws IOException {
        KyFilePDF d = new KyFilePDF();
 //       d.signDocument("F://at.pdf");
//	System.out.println("s");
//	  File fis = new File("F://at.pdf");
//      File fos = new File("F://at1.pdf");
//	d.copyFile(fis, fos);
    }
}
