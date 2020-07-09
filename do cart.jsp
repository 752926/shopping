<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/9
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="dao.*,entity.*,java.util.*"  contentType="text/html;
charset=UTF-8" pageEncoding="UTF-8"%>
<%    HashMap map = (HashMap) session.getAttribute("cart");
  if (map == null) {   map = new HashMap();  }
    int id = Integer.parseInt(request.getParameter("id"));
    String id = request.getParameter("id");
    ProductDaoImp dao = new ProductDaoImp();
    Product p = dao.findById(Integer.parseInt(id));
      CartItem cartItem = (CartItem) map.get(id);
      if (cartItem != null) {   cartItem.setSum(cartItem.getSum() + 1);  }
      else {   //有--> 把数量+1   //无--> 把商品放入购物车 数量为1
         cartItem = new CartItem();
         cartItem.setP(p);
         cartItem.setSum(1);  }
    map.put(id, cartItem);
      out.print(map.size());
      session.setAttribute("cart", map);
      response.sendRedirect("cart.jsp"); %>
