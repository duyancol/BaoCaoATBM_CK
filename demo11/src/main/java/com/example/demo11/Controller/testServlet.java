package com.example.demo11.Controller;

import com.example.demo11.Sevice.DMService;
import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import com.example.demo11.dao.DMSPDAO;
import com.example.demo11.model.Product;
import com.example.demo11.model.danhmuc;

import java.io.PrintWriter;
@WebServlet(name = "testServlet", value = "/rest")
public class testServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DMSPDAO dmspdao;
    private String message;

    public void init() {
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

        dmspdao = new DMSPDAO(jdbcURL, jdbcUsername, jdbcPassword);

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getServletPath();
//        if(request.getCharacterEncoding()!=null){
//            request.setCharacterEncoding("UTF-8");
//        }
////        request.getRequestDispatcher("BookForm.jsp").forward(request,response);
//        response.setContentType("text/html");
//
//        // Hello
//        PrintWriter out = response.getWriter();
//        out.println("<html><body>");
//        out.println("<h1>" + message + "</h1>");
//        out.println("</body></html>");
//        try {
//            switch (action) {
//                case "/listDM":
//                    showNewForm(request, response);
//                    break;
//                case "/insert":
//                    if(request.getCharacterEncoding()!=null){
//                        request.setCharacterEncoding("UTF-8");
//                    }
//                    insertDM(request, response);
//                    break;
//                case "/delete":
//                    deleteDM(request, response);
//                    break;
//                case "/edit":
//                    List<danhmuc> list = DMService.getInstance().getAll();
//                    request.setAttribute("pdlistcc",list);
//
//                    showEditForm(request, response);
//                    break;
//                case "/get":
//                    showEditForm(request, response);
//                    break;
//                case "/update":
//                    updateDM(request, response);
//                    break;
//                case "/test":
//                    ListMSP(request, response);
//                    break;
//
//                default:
//                    listDM(request, response);
//                    break;
//            }
//        } catch (SQLException ex) {
//            throw new ServletException(ex);
//        }
//    }
//
//    private void ListMSP(HttpServletRequest request, HttpServletResponse response) {
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        int price = Integer.parseInt(request.getParameter("price"));
//        int quantity =Integer.parseInt( request.getParameter("quantity"));
//        String img= request.getParameter("img");
//        int saleprice = Integer.parseInt(request.getParameter("saleprice"));
//        String mota= request.getParameter("mota");
//        String idcategogy = request.getParameter("idcategogy");
//        String img1= request.getParameter("img1");
//        String img2= request.getParameter("img2");
//        String img3= request.getParameter("img3");
//
//    }
//
//    private void listDM(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException, ServletException {
//        List<Product> listDM =dmspdao.listAllDM();
//        request.setAttribute("listDM", listDM);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("admin_web/product_add.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        RequestDispatcher dispatcher = request.getRequestDispatcher("BookForm.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, ServletException, IOException {
//        String id = request.getParameter("id");
//        Product existingDM = dmspdao.getDM(id);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("BookForm.jsp");
//        request.setAttribute("book", existingDM);
//        dispatcher.forward(request, response);
//
//    }
//
//    private void insertDM(HttpServletRequest request, HttpServletResponse response)
//
//            throws SQLException, IOException {
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        int price = Integer.parseInt(request.getParameter("price"));
//        int quantity =Integer.parseInt( request.getParameter("quantity"));
//        String img= request.getParameter("img");
//        int saleprice = Integer.parseInt(request.getParameter("saleprice"));
//        String mota= request.getParameter("mota");
//        String idcategogy = request.getParameter("idcategogy");
//        String img1= request.getParameter("img1");
//        String img2= request.getParameter("img2");
//        String img3= request.getParameter("img3");
//
//
//        Product dmsp = new Product(id,name,price,quantity,img,saleprice,mota,idcategogy,img1,img2,img3);
//        dmspdao.insertDM(dmsp);
//
//        response.sendRedirect("rest");
//    }
//
//    private void updateDM(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException {
//
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//       int price = Integer.parseInt(request.getParameter("price"));
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//        String img = request.getParameter("img");
//        int saleprice = Integer.parseInt(request.getParameter("saleprice"));
//        String mota= request.getParameter("mota");
//        String idcategogy = request.getParameter("idcategogy");
//        String img1= request.getParameter("img1");
//        String img2= request.getParameter("img2");
//        String img3= request.getParameter("img3");
//        Product dmsp = new Product(id,name,price,quantity,img,saleprice,mota,idcategogy,img1,img2,img3);
//        dmspdao.updateDM(dmsp);
//        response.sendRedirect("rest");
//    }
//    private void get(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException {
//        String id = request.getParameter("id");
//        String name = request.getParameter("name");
//        int price = Integer.parseInt(request.getParameter("price"));
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//        String img = request.getParameter("img");
//        int saleprice = Integer.parseInt(request.getParameter("saleprice"));
//        String mota= request.getParameter("mota");
//        String idcategogy = request.getParameter("idcategogy");
//        String img1= request.getParameter("img1");
//        String img2= request.getParameter("img2");
//        String img3= request.getParameter("img3");
//
//
//        Product dmsp = new Product(id,name,price,quantity,img,saleprice,mota,idcategogy,img1,img2,img3);
//
//        dmspdao.updateDM(dmsp);
//        response.sendRedirect("rest");
//    }
//
//    private void deleteDM(HttpServletRequest request, HttpServletResponse response)
//            throws SQLException, IOException {
//        String id =request.getParameter("id");
//
//
//        Product dmsp = new Product(id);
//
//        dmspdao.deleteDM(dmsp);
//        response.sendRedirect("rest");
//
//    }
}
