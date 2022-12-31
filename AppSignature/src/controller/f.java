package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
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

import com.lowagie.text.DocumentException;
import com.lowagie.text.Element;
import com.lowagie.text.Image;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfEncryptor;
import com.lowagie.text.pdf.PdfImage;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfSignatureAppearance;
import com.lowagie.text.pdf.PdfStamper;
import com.lowagie.text.pdf.PdfWriter;

public class f {
	
public f() {
		super();
	}

//	private String passwordKeystore="123456";
//	private String tr= "duy433";
//	private String keystore="C:\\\\Users\\\\LAPTOP USA PRO\\\\Desktop\\\\Key.keystore.p12";
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
	public void signDocument(String pdfFileName,String pass,String bidanh,String keypath,String path) {

       
        try {
        	
           // Object tmpDir;
			// 1. copy
//            File tmpPDFFile = new File("F:\\atbm-12.pdf");
        	File tmpPDFFile = new File(pdfFileName);
//            copyFile(new File(pdfFileName), tmpPDFFile);
            // 2. sign
            KeyStore ks = KeyStore.getInstance("JKS");
//            enumeration = ks.aliases();
//            alias = enumeration.nextElement();
            FileInputStream fis = new FileInputStream(keypath);
            ks.load(fis, pass.toCharArray());
            PrivateKey key = (PrivateKey) ks.getKey(bidanh, pass.toCharArray());
            Certificate[] chain = ks.getCertificateChain(bidanh);
            PdfReader reader = new PdfReader(pdfFileName);
            FileOutputStream fout = new FileOutputStream(path);
            PdfStamper stp = PdfStamper.createSignature(reader, fout, '\0');
            PdfSignatureAppearance sap = stp.getSignatureAppearance();
            System.out.println(key);
            sap.setCrypto(key, chain, null, PdfSignatureAppearance.WINCER_SIGNED);
           System.out.println(key);
           //sap.setImage(new
//           sap.setVisibleSignature(new Rectangle(360, 630, 550, 0), 1, null);
           sap.setVisibleSignature(new Rectangle(360, 100, 550, 0), 1, null);
           
        //   sap.setVisibleSignature(new Rectangle(340, 230, 550, 300), 1, null);
           

            stp.close();
            fis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	public void signDocument1(String pdfFileName,String pass,String bidanh,String keypath) {
        try {
        
        	
           // Object tmpDir;
			// 1. copy
            File tmpPDFFile = new File("HoaDon24.pdf");
//            copyFile(new File(pdfFileName), tmpPDFFile);
            // 2. sign
            KeyStore ks = KeyStore.getInstance("JKS");
//            enumeration = ks.aliases();
//            alias = enumeration.nextElement();
            FileInputStream fis = new FileInputStream(keypath);
            ks.load(fis, pass.toCharArray());
            PrivateKey key = (PrivateKey) ks.getKey(bidanh, pass.toCharArray());
            Certificate[] chain = ks.getCertificateChain(bidanh);
            PdfReader reader = new PdfReader("HoaDon24.pdf");
            FileOutputStream fout = new FileOutputStream("c10.pdf");
            PdfStamper stp = PdfStamper.createSignature(reader, fout, '\0');
            PdfSignatureAppearance sap = stp.getSignatureAppearance();
            System.out.println(key);
            sap.setCrypto(key, chain, null, PdfSignatureAppearance.WINCER_SIGNED);
           System.out.println(key);
           //sap.setImage(new
            sap.setVisibleSignature(new Rectangle(360, 130, 550, 0), 1, null);
            

            stp.close();
            fis.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	public String getValidate(String secret, String path ) throws KeyStoreException, NoSuchAlgorithmException, CertificateException, IOException {
		String from =null;
		String to =null;
		
		InputStream ins = new FileInputStream(path);
		KeyStore keyStore = KeyStore.getInstance("JKS");
		keyStore.load(ins, secret.toCharArray());
		Enumeration<String> aliases = keyStore.aliases();
		while(aliases.hasMoreElements()) {
		    String alias = aliases.nextElement();
		    System.out.println("alias : " + alias);
		    if(keyStore.getCertificate(alias).getType().equals("X.509")) {
		        X509Certificate cert = (X509Certificate) keyStore.getCertificate(alias);
		        from=  " from : " + cert.getNotBefore();
		        to=" to : " + cert.getNotAfter();
		        try {
		            cert.checkValidity();
		        } catch (CertificateExpiredException e) {
		            // if the certificate has expired.
		            e.printStackTrace();
		        } catch (CertificateNotYetValidException e) {
		            // if the certificate is not yet valid. it means the certificate validitity start date is future date.
		            e.printStackTrace();
		        }               
		    }
		}
		return from + "----" +to;
	}
	
public static void main(String[] args) throws IOException, KeyStoreException, NoSuchAlgorithmException, CertificateException {
	f d = new f();
	d.signDocument("F:\\tp3.pdf","123456","duy433","C:\\\\Users\\\\LAPTOP USA PRO\\\\Desktop\\\\Key.keystore.p12","F:\\ts.pdf");

	
	
//	String s ="{C=[TPHCM], OU=[Long An], CN=[Nguyen Van Tuong Duy], O=[Long An]}";
//	System.out.println(s);
//	String text =s.replaceAll("OU=", "");
//	String text1 =text.replaceAll("C=", "");
//	String text2 =text1.replaceAll("CN=", "");
//	String text3 =text2.replaceAll("O=", "");
//	//String text1 =text.replaceAll("}", "");
//
//	String Txt4=text3.substring(1,text3.length()-1);
//	String[] txt = Txt4.split(",");
//	String a = txt[3];
//	System.out.println(a);
////	System.out.println(d.getValidate());
	
}
}
