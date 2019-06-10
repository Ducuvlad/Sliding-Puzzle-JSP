<%--
  Created by IntelliJ IDEA.
  User: ducuv
  Date: 2019-05-30
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Victory!</title>
</head>
<body>
<img src="images.jpg"><br>
<p>YOU WIN</p>

<%
    //delete existing cookie and create new one for keeping score
    Cookie cookie = null;
    Cookie[] cookies = null;

    // Get an array of Cookies associated with the this domain
    cookies = request.getCookies();
    String oldVal="";
    if( cookies != null ) {


        for (int i = 0; i < cookies.length; i++) {
            cookie = cookies[i];
            //print score
            if((cookie.getName( )).compareTo("Score") == 0 ) {
                oldVal=cookie.getValue();
                out.print("Score="+oldVal);
            }

        }
    }

%>
</body>
</html>
