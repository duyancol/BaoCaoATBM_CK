package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "SearchAjaxProduct", value = "/SearchAjaxProduct")
public class SearchAjaxProduct extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("txt");
        ProductDao productDao=new ProductDao();

        List<Product> list = productDao.searchProduct(txtSearch);
        PrintWriter out = response.getWriter();
        for (Product o : list) {
            out.println("<div class=\"col-sm-3 col-md-6 col-lg-4\">\n" +
                    "                        <div class=\"card\">\n" +
                    "                            <div class=\"card-body text-center\">\n" +
                    "                                <a href=\"PDDetailsServlet?id="+o.getId()+"\"><img src=\""+o.getImg()+"\" class=\"product-image\"></a>\n" +
                    "                                <h5 class=\"card-title\"><b>Accessory</b></h5>\n" +
                    "                                <p class=\"card-text small\">"+o.getName()+"</p>\n" +
                    "                                <p class=\"tags\">"+o.getPrice()+"</p>\n" +
                    "                                <a href=\"cart-add?id="+o.getId()+"\" target=\"_blank\" class=\"btn btn-success button-text\"><i class=\"fa fa-shopping-cart\" aria-hidden=\"true\"></i> Add to cart</a>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                    </div>");
        }
//        for (Product o : list) {
//            int giamgia=o.getPrice()-o.getPrice()*o.getSaleprice()/100;
//
//            if(o.getSaleprice()!=0){
//
//                out.println(" <div class=\"drink-item salad-type product\"  >\n" +
//
//                        "                                <div>\n" +
//                        "                                    <span style=\"position: absolute;background-color: red;width: 100px;height: 50px;z-index: 99;border-radius: 5px;margin-top:15%;font-weight: bold ;color: white;;\">Sale "+o.getSaleprice()+"  !</span>\n" +
//                        "                                </div>\n" +
//
//                        "\n" +
//                        "                            <div class=\"item-wrap bottom-up play-on-scroll\">\n" +
//                        "                                <div class=\"item-img \" style=\"height: 65%;\" >\n" +
//                        "                                   \n" +
//                        "                                    <img src=\""+o.getImg()+"\" alt=\"\" class=\"img-holder bg-img\">\n" +
//                        "                                  \n" +
//                        "\n" +
//                        "\n" +
//                        "                                </div>\n" +
//
//                        "                                    <div>\n" +
//                        "                                        <p>"+o.getPrice()+" con $<span style=\"padding: 0;margin: 10px 0px;color: red;\">"+giamgia+"</span></p>\n" +
//                        "                                    </div>\n" +
//                        "\n" +
//
////                    "                                <c:if test=\""+o.getSaleprice()+"\">\n" +
////                    "\n" +
////                    "                                    <div>\n" +
////                    "                                        <p>$${p.price} </p>\n" +
////                    "                                    </div>\n" +
////                    "                                </c:if>\n" +
//                        "\n" +
//                        "\n" +
//                        "\n" +
//                        "                                <div>\n" +
//                        "                                    <div>\n" +
//                        "                                        <a href=\"#\" style=\"margin-top: 140px;text-decoration: none;color: #000;\"> "+o.getName()+"\n" +
//                        "                                        </a>\n" +
//                        "                                    </div>\n" +
//                        "                                </div>\n" +
//                        "\n" +
//                        "                                <button onclick=\"themvaogiohang(this)\"\n" +
//                        "                                ><a href=\"PDDetailsServlet?id="+o.getId()+"\" style=\"text-decoration: none\"><i class=\"fas fa-eye\"></i></a></button>\n" +
//                        "                                <a  href=\"cart-add1?id="+o.getId()+"#drink-menu-section\" style=\"text-decoration: none\"><button><i class=\"fas fa-cart-plus\" ></i></button></a>\n" +
//                        "\n" +
//                        "                            </div>\n" +
//                        "\n" +
//                        "\n" +
//                        "                        </div>");
//            }else if(o.getQuantity()==0.0){
//                out.println(" <div class=\"drink-item salad-type product\"  >\n" +
//
//
//
//                        "\n" +
//                        "                            <div class=\"item-wrap bottom-up play-on-scroll\">\n" +
//                        "                                <div class=\"item-img \" style=\"height: 65%;\" >\n" +
//                        "                                   \n" +
//                        "                                    <img src=\""+o.getImg()+"\" alt=\"\" class=\"img-holder bg-img\">\n" +
//                        "                                  \n" +
//                        "\n" +
//                        "\n" +
//                        "                                </div>\n" +
////                    "                                <c:if test=\""+o.getSaleprice() +"\">\n" +
////                    "                                    <div>\n" +
////                    "                                        <p>$${p.price} con $<span style=\"padding: 0;margin: 10px 0px;color: red;\">${p.price-p.price*p.saleprice/100}</span></p>\n" +
////                    "                                    </div>\n" +
////                    "\n" +
////                    "                                </c:if>\n" +
////                    "                                <c:if test=\""+o.getSaleprice()+"\">\n" +
////                    "\n" +
//                        "                                    <div>\n" +
//                        "                                        <p>"+o.getPrice()+" </p>\n" +
//                        "                                    </div>\n" +
////                    "                                </c:if>\n" +
//                        "\n" +
//                        "\n" +
//                        "\n" +
//                        "                                <div>\n" +
//                        "                                    <div>\n" +
//                        "                                        <a href=\"#\" style=\"margin-top: 140px;text-decoration: none;color: #000;\"> "+o.getName()+"\n" +
//                        "                                        </a>\n" +
//                        "                                    </div>\n" +
//                        "                                </div>\n" +
//                        "\n" +
//                        "                                <button onclick=\"themvaogiohang(this)\"\n" +
//                        "                                ><a href=\"PDDetailsServlet?id="+o.getId()+"\" style=\"text-decoration: none\"><i class=\"fas fa-eye\"></i></a></button>\n" +
//                        "                                <a  style=\"text-decoration: none\"><button style=\"background: #9a9898\">Out of stock</button></a>\n" +
//                        "\n" +
//                        "                            </div>\n" +
//                        "\n" +
//                        "\n" +
//                        "                        </div>");
//
//            }
//            else {
//                out.println(" <div class=\"drink-item salad-type product\"  >\n" +
//
//
//
//                        "\n" +
//                        "                            <div class=\"item-wrap bottom-up play-on-scroll\">\n" +
//                        "                                <div class=\"item-img \" style=\"height: 65%;\" >\n" +
//                        "                                   \n" +
//                        "                                    <img src=\""+o.getImg()+"\" alt=\"\" class=\"img-holder bg-img\">\n" +
//                        "                                  \n" +
//                        "\n" +
//                        "\n" +
//                        "                                </div>\n" +
////                    "                                <c:if test=\""+o.getSaleprice() +"\">\n" +
////                    "                                    <div>\n" +
////                    "                                        <p>$${p.price} con $<span style=\"padding: 0;margin: 10px 0px;color: red;\">${p.price-p.price*p.saleprice/100}</span></p>\n" +
////                    "                                    </div>\n" +
////                    "\n" +
////                    "                                </c:if>\n" +
////                    "                                <c:if test=\""+o.getSaleprice()+"\">\n" +
////                    "\n" +
//                        "                                    <div>\n" +
//                        "                                        <p>"+o.getPrice()+" </p>\n" +
//                        "                                    </div>\n" +
////                    "                                </c:if>\n" +
//                        "\n" +
//                        "\n" +
//                        "\n" +
//                        "                                <div>\n" +
//                        "                                    <div>\n" +
//                        "                                        <a href=\"#\" style=\"margin-top: 140px;text-decoration: none;color: #000;\"> "+o.getName()+"\n" +
//                        "                                        </a>\n" +
//                        "                                    </div>\n" +
//                        "                                </div>\n" +
//                        "\n" +
//                        "                                <button onclick=\"themvaogiohang(this)\"\n" +
//                        "                                ><a href=\"PDDetailsServlet?id="+o.getId()+"\" style=\"text-decoration: none\"><i class=\"fas fa-eye\"></i></a></button>\n" +
//                        "                                <a  href=\"cart-add1?id="+o.getId()+"#drink-menu-section\" style=\"text-decoration: none\"><button><i class=\"fas fa-cart-plus\" ></i></button></a>\n" +
//                        "\n" +
//                        "                            </div>\n" +
//                        "\n" +
//                        "\n" +
//                        "                        </div>");
//            }
//
//        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
