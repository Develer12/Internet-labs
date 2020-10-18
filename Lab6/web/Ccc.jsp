<%@ page import="pac.CBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <%
            ServletContext servletContext = application;
            System.out.println("old: " + servletContext.getAttribute("atrCBean"));
            CBean cBean = (CBean) servletContext.getAttribute("atrCBean");
            if (cBean != null)
            {
                String value1 = cBean.getValue1();
                String value2 = cBean.getValue2();
                String value3 = cBean.getValue3();
                System.out.println(value1);
                out.println(
                        "<br>Value1: " + value1 +
                                "<br>Value2: " + value2 +
                                "<br>Value3: " + value3
                );
            }
            else
            {
                out.write("CBean is null");
            }
        %>
    </body>
</html>
