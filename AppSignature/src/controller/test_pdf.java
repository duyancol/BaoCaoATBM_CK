package controller;

import java.io.*;
import java.security.*;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Calendar;
 
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
 
public class test_pdf  {
	/**
	 * Name of the PDF document
	 */
	static String dirname  = "" ;// "D:\\"
	static String fname  = "c10" ;
 
	public static void main(String[] args) {
		try {
		//	convertStringToX509Cert("���0H�Y�f�0%X��xW�>-�B�Q%�M�4����h��$��\\�g��#~��bw�ۘ��4SP@ߦeѥ�fǿv޿i)h�@��׭�5�K����ymg�S$뜦3Z���O���>�h���=�\\ń&�4\\�Ȼ");
//			test_pdf.verifyPdf() ;
			name();
		}
		catch(Exception e) {
			System.err.println(e.getMessage());
		}
	}
	public static String name() throws IOException, CertificateExpiredException, CertificateNotYetValidException {
		KeyStore kall = PdfPKCS7.loadCacertsKeyStore();
		String su = null;
		PdfReader reader = new PdfReader( "c10" +".pdf");
		AcroFields af = reader.getAcroFields();
		ArrayList names = af.getSignatureNames();
		for (int k = 0; k < names.size(); ++k) {
			   String name = (String)names.get(k);
			   
		 PdfPKCS7 pk = af.verifySignature(name);
		 su=PdfPKCS7.getSubjectFields(pk.getSigningCertificate()).toString();
		   System.out.println(su);
		   System.out.println(pk.getSigningCertificate().getSigAlgName());
		 System.out.println(  pk.getSigningCertificate().getNotAfter());
		 System.out.println(  pk.getSigningCertificate().getNotBefore());
		}
		
		return su;
		
	}
	public static String getAL() throws IOException, CertificateExpiredException, CertificateNotYetValidException {
		KeyStore kall = PdfPKCS7.loadCacertsKeyStore();
		String su = null;
		PdfReader reader = new PdfReader( "c10" +".pdf");
		AcroFields af = reader.getAcroFields();
		ArrayList names = af.getSignatureNames();
		for (int k = 0; k < names.size(); ++k) {
			   String name = (String)names.get(k);
			   
		 PdfPKCS7 pk = af.verifySignature(name);
		 su=pk.getSigningCertificate().getSigAlgName();
		   System.out.println(su);
		   System.out.println(pk.getSigningCertificate().getSigAlgName());
		 System.out.println(  pk.getSigningCertificate().getNotAfter());
		 System.out.println(  pk.getSigningCertificate().getNotBefore());
		}
		
		return su;
		
	}
	public static final boolean verifyPdf()
                   throws IOException, DocumentException, Exception
	{
		KeyStore kall = PdfPKCS7.loadCacertsKeyStore();
 
		PdfReader reader = new PdfReader(dirname + fname +".pdf");
		AcroFields af = reader.getAcroFields();
 
		// Search of the whole signature
		ArrayList names = af.getSignatureNames();
	
 
		// For every signature :
		for (int k = 0; k < names.size(); ++k) {
		   String name = (String)names.get(k);
  		   // Affichage du nom
		   System.out.println("Signature name: " + name);
		   System.out.println("Signature covers whole document: "
                                + af.signatureCoversWholeDocument(name));
  		   // Affichage sur les revision - version
		   System.out.println("Document revision: " + af.getRevision(name) + " of "
                                + af.getTotalRevisions());
		   // Debut de l'extraction de la "revision"
		   FileOutputStream out = new FileOutputStream("F:\\revision_"
                                + af.getRevision(name) + ".pdf");
		   byte bb[] = new byte[32];
		   InputStream ip = af.extractRevision(name);
		   int n = 0;
		   while ((n = ip.read(bb)) > 0) out.write(bb, 0, n);
		   out.close();
		   ip.close();
		   // Fin extraction revision
 
		   PdfPKCS7 pk = af.verifySignature(name);
		   Calendar cal = pk.getSignDate();
		   Certificate pkc[] = pk.getCertificates();
		  
		   
		   byte[] s =pk.getSigningCertificate().getSignature();
		   
		   String certificateString=new String(s);
		   System.out.println(pk.getSigningCertificate().getPublicKey());
		   
		   String su=PdfPKCS7.getSubjectFields(pk.getSigningCertificate()).toString();
		   System.out.println(su);
		   
		 
		  
		 
		//	System.out.println(new String(s));
		   // Information about the certificat, le signataire
		   System.out.println("Subject: "
                                + PdfPKCS7.getSubjectFields(pk.getSigningCertificate()));
		   // Le document à t'il ete modifié ?
		   System.out.println("Document modified: " + !pk.verify());
 
		   // Is the certificate avaible ? Be carefull we search the chain of certificat
		   Object fails[] = PdfPKCS7.verifyCertificates(pkc, kall, null, cal);
		   if (fails == null)
		       System.out.println("Certificates verified against the KeyStore");
		   else
		       System.out.println("Certificate failed: " + fails[1]+" ");
		}
		return true ;
	}
	public static X509Certificate convertStringToX509Cert(String certificate) throws Exception{
	    InputStream targetStream = new ByteArrayInputStream(certificate.getBytes());
	    return (X509Certificate) CertificateFactory
	            .getInstance("X509")
	            .generateCertificate(targetStream);
	}
}