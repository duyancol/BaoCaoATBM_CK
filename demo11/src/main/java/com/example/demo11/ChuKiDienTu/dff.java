package com.example.demo11.ChuKiDienTu;

import java.io.IOException;

public class dff {
    public static void main(String[] args) throws IOException {
        xacthuc xt = new xacthuc();
        String thongtin =xt.name("target\\\\demo11-1.0-SNAPSHOT\\\\file\\\\HoaDon24daky.pdf");
        System.out.println(thongtin);
    }
}
