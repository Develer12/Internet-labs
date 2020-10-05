<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="lib" uri="taglib.tld" %>

<html>
    <head>
        <title>Title</title>
    </head>
    <body>
        <lib:dossier action="/Ttt">
            <lib:firstname value="Username"/>
            <br/>
            <lib:lastname value="Username"/>
            <br/>
            <lib:sex/>
            <br/>
            <lib:submit/>
        </lib:dossier>
    </body>
</html>
