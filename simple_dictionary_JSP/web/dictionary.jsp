<%--
  Created by IntelliJ IDEA.
  User: HieuNC
  Date: 9/17/2019
  Time: 3:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dictionary</title>
</head>
<body>
    <%!
        Map<String, String> dic = new HashMap<>();
    %>

    <%
        dic.put("hello", "Xin chào");
        dic.put("how", "Thế nào");
        dic.put("book", "Quyển sách");
        dic.put("computer", "Máy tính");

        String search = request.getParameter("search");

        String result = dic.get(search);

        if (result != null){
            out.println("Word: " + search + "\n");
            out.println("Result: " + result);
        }else{
            out.println("Not found!");
        }
    %>
</body>
</html>
