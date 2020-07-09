<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/9
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<% ProductDaoImp dao = new ProductDaoImp();
ArrayList list = dao.findAll();
for(int i=0;i<list.size();i++)
{
    Product p = (Product)list.get(i);
    %>
<li>
    < a href=" >"> <div class="i-pic limit"> < img src="images/small-<%= p.getImg() %>" />
    <p class="title fl"><%= p.getName() %></p >
    <p class="price fl">
        <b>¥</b>
        <strong><%= p.getPrice() %></strong> </p >
    <p class="number fl"> 销量<span><%= p.getNum() %></span> </p >
</div>
</ a>
</li>
<%
}
%>
