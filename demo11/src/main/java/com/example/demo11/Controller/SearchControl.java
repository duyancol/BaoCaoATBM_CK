package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.dao.ProductDao;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchControl", value = "/SearchControl")
public class SearchControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String txtSearch = request.getParameter("txt");
            int count = PDSevice.getInstance().count(txtSearch).size();
            String indexString= request.getParameter("index");
            int index =Integer.parseInt(indexString);

            int pagesize = 4;
            int endpage =0;
            endpage =count/pagesize;
            if(count%pagesize!=0){
                endpage++;
            }
            List<Product>  listSearch =PDSevice.getInstance().serch(txtSearch,index,pagesize);
       for(Product o : listSearch){
           System.out.println(o);
       }
            request.setAttribute("end",endpage);
            request.setAttribute("list",listSearch);
            request.setAttribute("txt",txtSearch);
            request.setAttribute("index",index);
            request.getRequestDispatcher("index.jsp").forward(request,response);



        }catch (Exception e){

        }
    }
}
