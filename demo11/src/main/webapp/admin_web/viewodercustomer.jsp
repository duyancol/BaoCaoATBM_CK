<%--
  Created by IntelliJ IDEA.
  User: LAPTOP USA PRO
  Date: 12/27/2022
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String a;
    String b;
    String path = (String) request.getAttribute("path");
    String check = (String) request.getAttribute("check");
    String key = (String) request.getAttribute("key");
    String al = (String) request.getAttribute("al");
    String thongtin = (String) request.getAttribute("thongtin");
    String thoigian = (String) request.getAttribute("thoigian");
    String xacthuc = (String) request.getAttribute("xacthuc");
    String username = (String) request.getAttribute("username");
    if(thongtin!=null){
        String text =thongtin.replaceAll("OU=", "");
        String text1 =text.replaceAll("C=", "");
        String text2 =text1.replaceAll("CN=", "");
        String text3 =text2.replaceAll("O=", "");
        //String text1 =text.replaceAll("}", "");

        String Txt4=text3.substring(1,text3.length()-1);
        String[] txt = Txt4.split(",");
        a = txt[2];
         b = txt[3];
    }else{
        a="";
        b="";
    }



%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #wrapper {
            max-width: 1600px;
            display: flex;
            margin: 0 auto;
            font-size: 17px;
            font-family: sans-serif;
        }
        #block1 {
            height: 1000px;
            flex-basis: 50%;
            /* background: gray; */

        }
        #block2 {
            height: 1000px;
            flex-basis: 50%;
        }
        #block2 h1 {
            text-align: center;
        }
        .check{
            display: flex;
            justify-items: center;
            margin-left: 40%;
            padding: 10px 40px;
            background: rgba(76, 175, 80, 0.75);
            color: whitesmoke;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            font-size: 18px;
        }
        .from{
            border: #6d6d6d solid 2px;
            border-radius: 10px;
            display: flex;
            justify-content: center;

        }
        .bo{
            /*display: flex;*/
            /*justify-items: center;*/
        }
        .btn{
            padding: 10px 20px;
            margin-left: 20px;
            background: rgba(76, 175, 80, 0.75);
            color: whitesmoke;
            border: none;
            border-radius: 5px;

        }
    </style>
</head>

<body>

<div id="wrapper">
    <div id="block1">
        <embed src="<%="file/HoaDon"+path+"daky.pdf"%>" width="750" height="1000" type="application/pdf">
        <!-- <a href="https://file.nhasachmienphi.com/pdf/nhasachmienphi-120-mon-sup-bo-duong-cho-tre-em-va-nguoi-benh.pdf">pdf</a> -->
    </div>
    <div id="block2">
        <embed src="<%="file/HoaDon"+path+".pdf"%>" width="750" height="1000" type="application/pdf">
    </div>

</div>
<div class="from">

    <form action="check"method="post" class="bo">
        <h1>Thông tin chữ kí</h1>
        <p><b>Tên: </b><%=a%></p>
        <input name="path" value="<%=path%>" style="display: none">
        <input name="username" value="<%=username%>" style="display: none" >
        <p><b>Địa chỉ: </b><%=b%></p>
        <p><b>Public Key: </b><%=key%></p>
        <p><b>Thuật toán: </b><%=al%></p>
        <p><b>Đã sửa đổi : </b><%=check%></p>
        <p><b>Thời hạn: </b><%=thoigian%></p>
        <p style="padding: 20px"><b>Tình trạng xác thực :
                <%
                if (xacthuc != null) {
            %>
        <div style="margin-left: 80px;color: #55ff00;font-size: 24px;font-weight: bold;border: #31b131 solid 2px;border-radius: 5px;width: 200px;height: 40px;display: flex;justify-content: center;padding-top: 10px" >
           <a style="margin: auto;padding-top: 20px">  <%= xacthuc%></a>
        </div>
        <%

            }
        %>

            </b></p>

        <input class="check" type="submit" value="Check" >

    </form>
</div>
<div style="margin-top: 50px;display: flex;justify-content: center;padding-bottom: 50px">

    <a href="updateFilePDF?truonghop=1&id=<%=path%>">  <input class="btn" type="submit" value="Cập nhật đơn hàng" ></a>
   <a href="updateFilePDF?truonghop=0&id=<%=path%>"> <input class="btn" style="background-color: rgba(212,43,57,0.85)" type="submit" value="Hủy đơn hàng" ></a>
    <input  class="btn" type="submit" value="Quay lại" >
</div>
</body>
</html>
