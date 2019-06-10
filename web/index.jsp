<%--
  Created by IntelliJ IDEA.
  User: ducuv
  Date: 2019-05-30
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <a href="game.html">Start</a>
<%
    //delete existing cookie and create new one for keeping score
        Cookie cookie = null;
        Cookie[] cookies = null;

        // Get an array of Cookies associated with the this domain
        cookies = request.getCookies();

        if( cookies != null ) {


            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];

                if((cookie.getName( )).compareTo("Score") == 0 ) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }

            }
        }
    Cookie newCookie = new Cookie("Score","0");
    newCookie.setMaxAge(60*60*24);
    response.addCookie(newCookie);
%>
  </body>
</html>
