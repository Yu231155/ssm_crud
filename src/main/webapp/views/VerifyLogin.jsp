<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
String yonghu=new String(request.getParameter("yonghu").getBytes("ISO-8859-1"),"UTF-8");
String mima=request.getParameter("mima");


    if(yonghu.equals("admin")&& mima.equals("123456"))
    {
        session.setAttribute("yonghu", yonghu);
        response.sendRedirect("menu.jsp");
        
    }
    else
    {
        
        out.print("用户名或密码错误，请重新输入");
        response.setHeader("refresh", "3;URL=index.jsp");
    }


}
catch(Exception e)
{
out.print("请从登录界面登录");
response.setHeader("refresh", "3;URL=index.jsp");
}
%>
</body>
</html>