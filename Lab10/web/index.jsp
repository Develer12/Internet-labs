<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="jquery-3.2.1.js"></script>
  </head>
  <body>
    <div>
      <input type="text" id="id" title="" />
      <input type="text" id="name" title="" />
      <input type="button" onclick="selectFromT1()" title="" value="get" />
      <input type="button" onclick="insertToT1()" title="" value="post" />
    </div>

    <div id="result"></div>

    <script>
      function selectFromT1() {
        var xmlDoc = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
        var params = '';

        if($("#id").val()!=""){
          params = '?id='+$("#id").val();
        }
        if($("#name").val()!=""){
          params = '?name='+$("#name").val();
        }

        if($("#id").val()!="" && $("#name").val()!=""){
          params = '?id='+$("#id").val()+'&name='+$("#name").val();
        }

        xmlDoc.open('GET', "/Lab10_war_exploded/DB"+params, true);

        xmlDoc.onreadystatechange = function() {
          if (xmlDoc.readyState === 4 && xmlDoc.status === 200) {
            //console.log(xmlDoc.responseText);
            document.getElementById("result").innerHTML = xmlDoc.responseText;
          }
        }

        xmlDoc.send();
      }

      function insertToT1() {
        var xmlDoc = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("Microsoft.XMLHTTP");
        var params = 'id='+$("#id").val()+'&name='+$("#name").val();

        xmlDoc.open('POST', "/Lab10_war_exploded/DB", true);
        xmlDoc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xmlDoc.onreadystatechange = function() {
          if (xmlDoc.readyState === 4 && xmlDoc.status === 200) {
            console.log(xmlDoc.responseText);
            document.getElementById("result").innerHTML = xmlDoc.responseText;
          }
        }

        xmlDoc.send(params);
      }
    </script>
  </body>
</html>
