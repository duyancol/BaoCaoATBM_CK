//package com.example.demo11.ChuKiDienTu;
//import com.spire.pdf.PdfDocument;
//
//import com.spire.pdf.security.PdfSignature;
//
//import com.spire.pdf.widget.*;
//public class r {
//    public static void main(String[] args) {
//
//
//
//        //Load a pdf document
//
//        PdfDocument doc = new PdfDocument();
//
//        doc.loadFromFile("F://c.pdf");
//
//
//
//        //Get the collection of PDF fields
//
//        PdfFormWidget pdfFormWidget = (PdfFormWidget) doc.getForm();
//
//        PdfFormFieldWidgetCollection pdfFormFieldWidgetCollection = pdfFormWidget.getFieldsWidget();
//
//
//
//        //Traverse all the PDF form field
//
//        for (int i = 0; i < pdfFormFieldWidgetCollection.getCount(); i++) {
//
//            //check whether it is PdfSignatureField
//
//            if (pdfFormFieldWidgetCollection.get(i) instanceof PdfSignatureFieldWidget) {
//
//                //get the signature field
//
//                PdfSignatureFieldWidget signatureFieldWidget = (PdfSignatureFieldWidget) pdfFormFieldWidgetCollection.get(i);
//
//                //get the PDF signature
//
//                PdfSignature signature = signatureFieldWidget.getSignature();
//
//
//
//                //Verify the signature
//
//                boolean result = signature.verifySignature();
//
//                if (result) {
//
//                    System.out.println("Valid signature");
//
//                } else {
//
//                    System.out.println("Invalid signature");
//
//                }
//
//            }
//
//        }
//
//    }
//}
