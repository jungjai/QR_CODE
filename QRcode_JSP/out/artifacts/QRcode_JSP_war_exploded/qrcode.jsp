<%--
  Created by IntelliJ IDEA.
  User: jeong
  Date: 2019-04-23
  Time: 오후 7:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.File, java.util.UUID" %>
<%@ page import="java.awt.image.BufferedImage, javax.imageio.ImageIO" %>
<%@ page import="com.google.zxing.qrcode.QRCodeWriter, com.google.zxing.common.BitMatrix, com.google.zxing.BarcodeFormat, com.google.zxing.client.j2se.MatrixToImageWriter" %>
<%
    String url = request.getParameter("url");
    int nCheck = 1;
    String savedFileName = "";

    // Check url
    if (url == null || url.equals("") || !url.startsWith("http")) {
        nCheck = 0;
    }
    else {
        // Set file path
        File path = new File(application.getRealPath("/") + "qrcode/images/");
        savedFileName = UUID.randomUUID().toString().replace("-", "");
        if (!path.exists()) path.mkdirs();

        // Create QRCode
        QRCodeWriter writer = new QRCodeWriter();
        BitMatrix qrCode = writer.encode(url, BarcodeFormat.QR_CODE, 200, 200);

        BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(qrCode);

        ImageIO.write(qrImage, "PNG", new File(path, savedFileName+".png"));
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>QRCode Generator</title>
</head>
<body>
<h1>URL QRCode Generate</h1>
<%
    if (nCheck == 1) {
        String qrcode = request.getContextPath() + "/qrcode/images/" + savedFileName + ".png";
        out.print("<img src='" + qrcode + "'/><p/>");
    }
    else {
        out.print("This is wrong URL.<p/>");
    }
%>
<a href="./index.jsp">Again </a>
</body>
</html>
