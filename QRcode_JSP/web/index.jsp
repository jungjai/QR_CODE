<%--
  Created by IntelliJ IDEA.
  User: jeong
  Date: 2019-04-23
  Time: 오후 7:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>QRcode Generator</title>
  </head>
  <body>
  <h1> URL QRcode Generate</h1>
  <form action = "qrcode.jsp" method ="post" >
    Input URL : <input type = "text" name="url" value = "" style="width : 500px" maxlength ="200"/>
    <input type = "submit" value = "Generate" />
  </form>
  </body>
</html>