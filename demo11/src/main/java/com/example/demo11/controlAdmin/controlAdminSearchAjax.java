package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchAjax", value = "/SearchAjax")
public class controlAdminSearchAjax extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");//giay chay bo

        List<Product> list = PDSevice.getInstance().serchByName(txtSearch);
        for (Product o : list) {
            System.out.println(" <div class=\"drink-item salad-type\"  >\n" +
                    "        <c:if test=\"${o.saleprice!=0.0}\">\n" +
                    "            <div>\n" +
                    "                <span style=\"position: absolute;background-color: red;width: 100px;height: 50px;z-index: 99;border-radius: 5px;margin-top:15%;font-weight: bold ;color: white;;\">Giảm ${o.saleprice}  !</span>\n" +
                    "            </div>\n" +
                    "        </c:if>\n" +
                    "\n" +
                    "        <div class=\"item-wrap bottom-up play-on-scroll\">\n" +
                    "            <div class=\"item-img \" style=\"height: 65%;\" >\n" +
                    "                <!-- <div class=\"img-holder bg-img\"> -->\n" +
                    "                <img src=\"${o.img}\" alt=\"\" class=\"img-holder bg-img\">\n" +
                    "                <!-- </div> -->\n" +
                    "                <!-- <div class=\"item-img \" style=\"height: 300px;\">\n" +
                    "                    <div class=\"img-holder bg-img\"\n" +
                    "                        style=\"background-image: url('assets/home/ads/home11_1.jpg');\"></div>\n" +
                    "                </div> -->\n" +
                    "\n" +
                    "\n" +
                    "            </div>\n" +
                    "            <c:if test=\"${o.saleprice!=0.0}\">\n" +
                    "                <div>\n" +
                    "                    <p>$${o.price} con $<span style=\"padding: 0;margin: 10px 0px;color: red;\">${o.price-o.price*o.saleprice/100}</span></p>\n" +
                    "                </div>\n" +
                    "\n" +
                    "            </c:if>\n" +
                    "            <c:if test=\"${o.saleprice==0.0}\">\n" +
                    "\n" +
                    "                <div>\n" +
                    "                    <p>$${o.price} </p>\n" +
                    "                </div>\n" +
                    "            </c:if>\n" +
                    "\n" +
                    "\n" +
                    "\n" +
                    "            <div>\n" +
                    "                <div>\n" +
                    "                    <a href=\"#\" style=\"margin-top: 140px;text-decoration: none;color: #000;\">  ${o.name}\n" +
                    "                    </a>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "\n" +
                    "                <%--                                <input type=\"number\" name=\"soluong\" min=\"1\" max=\"10\" value=\"1\" style=\"border-radius: 5px;width: 40px;\">--%>\n" +
                    "\n" +
                    "\n" +
                    "\n" +
                    "                <%--                        <a href=\"cart-add1?id=${p.id}\"><button>Xem</button></a>--%>\n" +
                    "            <button onclick=\"themvaogiohang(this)\"\n" +
                    "            ><a href=\"PDDetailsServlet?id=${o.id}\" style=\"text-decoration: none\"><i class=\"fas fa-eye\"></i></a></button>\n" +
                    "            <a href=\"cart-add1?id=${o.id}\" style=\"text-decoration: none\"><button><i class=\"fas fa-cart-plus\"></i></button></a>\n" +
                    "\n" +
                    "        </div>\n" +
                    "\n" +
                    "\n" +
                    "    </div>");

        }

    }
}
