<%--
  Created by IntelliJ IDEA.
  User: cenia
  Date: 18.10.2020
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <button onclick="Start()">Start</button>
    <button onclick="Close();">Close</button>
    <div id="ws"></div>

    <script type="text/javascript">
      let ws = null;

      const Start = () => {
        ws = new WebSocket(`ws://localhost:8081/${pageContext.request.contextPath}/ws`);
        ws.onmessage = (event) => {
          document.getElementById("ws").innerHTML += '<div>' + event.data + '</div>';
        };
      }

      const Close = () => {
        ws.close();
      }
    </script>
  </body>
</html>
