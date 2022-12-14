package com.example.demo11.ChuKiDienTu;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.io.FileNotFoundException;
public class XuathoadonPDF {
    public static void main(String[] args) throws MalformedURLException, IOException {
        // tạo một document
        Document document = new Document();

        try {
            // khởi tạo một PdfWriter truyền vào document và FileOutputStream
            PdfWriter.getInstance(document, new FileOutputStream("E:/2.pdf"));

            // mở file để thực hiện viết
            document.open();
            BaseFont font = BaseFont.createFont("c:\\\\windows\\\\fonts\\\\times.ttf",BaseFont.IDENTITY_H,BaseFont.EMBEDDED);
            Font font12= new Font(font,12,Font.NORMAL);
            Font font12_bold= new Font(font,12,Font.BOLD);
            Font font32_bold= new Font(font,32,Font.BOLD);
            Font font16_bold= new Font(font,16,Font.BOLD);
            Font font12_I= new Font(font,12,Font.ITALIC);
            Font font12_bold_red= new Font(font,12,Font.BOLD,BaseColor.RED);

            // thêm nội dung sử dụng add function
            Paragraph header = new Paragraph("Website Bán rượu vang",font12_bold);
            header.setAlignment(Element.ALIGN_LEFT);
            header.setIndentationLeft(80);
            document.add(header);
            Paragraph headersdt = new Paragraph("SĐT : 0377155498",font12_bold);
            headersdt.setAlignment(Element.ALIGN_LEFT);
            headersdt.setIndentationLeft(80);
            document.add(headersdt);
            Paragraph headerdiachi = new Paragraph("Địa chỉ : ĐH-Nông Lâm,Phường Linh Trung ,TP-Thủ Đức",font12_bold);
            headerdiachi.setAlignment(Element.ALIGN_LEFT);
            headerdiachi.setIndentationLeft(80);
            document.add(headerdiachi);
            Paragraph headeremail = new Paragraph("Email : 19130057@gmail.com ",font12_bold);
            headeremail.setAlignment(Element.ALIGN_LEFT);
            headeremail.setIndentationLeft(80);
            document.add(headeremail);
            Image image1 = Image.getInstance("36.jpg");


            image1.scalePercent(10f);
            image1.setAbsolutePosition(38f, 740f);
            document.add(image1);

            Paragraph HeadDerHD = new Paragraph("HÓA ĐƠN",font32_bold);
            HeadDerHD.setAlignment(Element.ALIGN_CENTER);
            // HeadDerHD.setIndentationLeft(80);
            document.add(HeadDerHD);



            // đóng file
            Paragraph paragraph1 = new Paragraph("Mã hóa đơn : ",font12_bold);
            Paragraph paragraph2 = new Paragraph("Tên khách hàng : ",font12_bold);
            Paragraph paragraph3 = new Paragraph("SĐT : ",font12_bold);
            Paragraph paragraph4 = new Paragraph("Địa chỉ : ",font12_bold);
            Paragraph paragraph5 = new Paragraph("Email : ",font12_bold);
            Paragraph paragraph6 = new Paragraph("Ngày mua : ",font12_bold);
            Paragraph paragraph7 = new Paragraph("Hình thức giao hàng : ",font12_bold);
            //Định dạng đoạn văn bản thứ nhất
//            paragraph1.setIndentationLeft(100);
//            paragraph1.setIndentationRight(80);
            paragraph1.setAlignment(Element.ALIGN_LEFT);
            // paragraph1.setSpacingAfter(15);
            //  paragraph1.setFont(font12_bold);
            //Đinh dạng đoạn văn bản thứ 2
            //  paragraph2.setSpacingBefore(15);
            paragraph2.setAlignment(Element.HEADER);

            //Thêm nội dung cho cả 2 đoạn văn bản trên

            Phrase phrase1 = new Phrase("MH301");
            Phrase phrase2 = new Phrase("Nguyễn Văn Duy");
            Phrase phrase3 = new Phrase("0377155498");
            Phrase phrase4 = new Phrase("TP.HCM");
            Phrase phrase5 = new Phrase("19130057@st.hcmuaf.edu.vn");
            Phrase phrase6 = new Phrase("12/2/2022");
            Phrase phrase7 = new Phrase("Giao hàng trực tiếp");
//
            paragraph7.setSpacingAfter(15);
            paragraph1.add(phrase1);
            paragraph2.add(phrase2);
            paragraph3.add(phrase3);
            paragraph4.add(phrase4);
            paragraph5.add(phrase5);
            paragraph6.add(phrase6);
            paragraph7.add(phrase7);


            //Thêm 2 đoạn văn bản vào document
            document.add(paragraph1);
            document.add(paragraph2);
            document.add(paragraph3);
            document.add(paragraph4);
            document.add(paragraph5);
            document.add(paragraph6);
            document.add(paragraph7);

            PdfPTable table = new PdfPTable(5);
            int[] b = {1, 5,2,1,1};
            table.setWidths(b);
            //Khởi tạo 3 ô header
            PdfPCell header1 = new PdfPCell(new Paragraph("STT",font12_bold));
            PdfPCell header2 = new PdfPCell(new Paragraph("Tên sản phẩm",font12_bold));
            PdfPCell header3 = new PdfPCell(new Paragraph("Giá",font12_bold));
            PdfPCell header4 = new PdfPCell(new Paragraph("Số lượng",font12_bold));
            PdfPCell header5 = new PdfPCell(new Paragraph("Tổng",font12_bold));
            //Thêm 3 ô header vào table
            table.addCell(header1);
            table.addCell(header2);
            table.addCell(header3);
            table.addCell(header4);
            table.addCell(header5);

            //Khởi tạo 3 ô data: ô số 1 là string, ô số 2 là ảnh, ô số 3 là table
            PdfPCell data1 = new PdfPCell(new Paragraph("1"));
            PdfPCell data2 = new PdfPCell(new Paragraph("Vang pháp"));
            PdfPCell data3 = new PdfPCell(new Paragraph("120 $"));
            PdfPCell data4 = new PdfPCell(new Paragraph("2"));
            PdfPCell data5 = new PdfPCell(new Paragraph("240 $"));

            PdfPCell data7 = new PdfPCell(new Paragraph("2"));
            PdfPCell data8 = new PdfPCell(new Paragraph("Vang pháp"));
            PdfPCell data9 = new PdfPCell(new Paragraph("120 $"));
            PdfPCell data10 = new PdfPCell(new Paragraph("1"));
            PdfPCell data11 = new PdfPCell(new Paragraph("120 $"));



//            PdfPTable nestedTable = new PdfPTable(2);
//            nestedTable.addCell(new Paragraph("Nested Cell 1"));
//            nestedTable.addCell(new Paragraph("Nested Cell 2"));

            //Thêm data vào bảng.
            table.addCell(data1);
            table.addCell(data2);
            table.addCell(data3);
            table.addCell(data4);
            table.addCell(data5);

            table.addCell(data7);
            table.addCell(data8);
            table.addCell(data9);
            table.addCell(data10);
            table.addCell(data11);





            document.add(table);
            PdfPTable table2 = new PdfPTable(2);

            //Khởi tạo 3 ô header
            PdfPCell header6 = new PdfPCell(new Paragraph("Tổng tiền sản phẩm :",font12_bold));
            PdfPCell header7 = new PdfPCell(new Paragraph("480 $"));
            int[] c = {4, 1};
            table2.setWidths(c);;
            table2.addCell(header6);
            table2.addCell(header7);
            PdfPCell data18 = new PdfPCell(new Paragraph("Phí vận chuyển : ",font12_bold));
            PdfPCell data28 = new PdfPCell(new Paragraph("1 $"));
            table2.addCell(data18);
            table2.addCell(data28);
            PdfPCell data19 = new PdfPCell(new Paragraph("Tổng tiền thanh toán : ",font12_bold));
            PdfPCell data29 = new PdfPCell(new Paragraph("481 $",font12_bold_red));
            table2.addCell(data19);
            table2.addCell(data29);
            document.add(table2);

            Paragraph paragraphNBHK = new Paragraph("Người mua hàng ký ",font16_bold);
            Paragraph paragraphNBHKt = new Paragraph("(Ký, ghi rõ họ tên) ",font12_I);
            paragraphNBHK.setSpacingAfter(5);
            paragraphNBHK.setSpacingBefore(15);
            paragraphNBHK.setAlignment(Element.ALIGN_RIGHT);
            paragraphNBHK.setIndentationRight(80);
            paragraphNBHKt.setAlignment(Element.ALIGN_RIGHT);
            paragraphNBHKt.setIndentationRight(100);
            document.add(paragraphNBHK);
            document.add(paragraphNBHKt);

//            Paragraph paragraphNBHK1 = new Paragraph("Người bán hàng ký ",font16_bold);
//            Paragraph paragraphNBHKt1 = new Paragraph("(Ký, ghi rõ họ tên) ",font12_I);
//           // paragraphNBHK1.set;
//            paragraphNBHK1.setSpacingBefore(-15);
//            //paragraphNBHK.setAlignment(Element.ALIGN_RIGHT);
//            //paragraphNBHK1.setIndentationRight(80);
//            //paragraphNBHKt1.setAlignment(Element.ALIGN_RIGHT);
//           // paragraphNBHKt.setIndentationRight(100);
//            document.add(paragraphNBHK1);
//            document.add(paragraphNBHKt1);
            document.close();

        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
