<%@page %>
<%@ page import="jspclass.Time" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<html>
  <head>
    <title>Index</title>
  </head>
  <body>
    <% Time time = new Time();%>

    <%time.PrintHello(time.getHour());%>
    <%time.ArrayDates(time.getDay(), time.getDayOfWeek(), time.getDayOfMonth(), time.getDate());%>
    <%=time.getRc()%>
    <hr/>
    <%
      Calendar calendar = Calendar.getInstance();
      int weekDay = calendar.get(Calendar.DAY_OF_WEEK);
      SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy");
    %>
    <div id="tbl" class="table"></div>
    <hr/>
    <a href="Jjj">GET</a>
    <form action="Jjj" method="POST">
      <input type="submit" name="press" content="press(POST)">
    </form>

    <script>
      function createTable() {
        <%
          StringBuilder htmlValue = new StringBuilder();
          String wDay = "";
          htmlValue
              .append("<div>")
              .append("<div>").append("DAY OF WEEK").append("</div>")
              .append("<div>").append("DATE").append("</div>")
              .append("</div>");

          for (int i = 0; i < 7; i++) {
            int day = 24*60*60*1000*i;

            switch (weekDay) {
                case 1: wDay = "sunday"; break;
                case 2: wDay = "monday"; break;
                case 3: wDay = "tuesday"; break;
                case 4: wDay = "wednesday"; break;
                case 5: wDay = "thursday"; break;
                case 6: wDay = "friday"; break;
                case 7: wDay = "saturday"; break;
            }

            htmlValue
              .append("<div class='table-row' >")
              .append("<div class='table-cell' >").append(wDay).append("</div>")
              .append("<div class='table-cell' >").append(dateFormat.format(new Date(calendar.getTimeInMillis() + day))).append("</div>")
              .append("</div>");

            weekDay = (weekDay % 7) + 1;
          }
        %>
        document.getElementById("tbl").innerHTML = "<%= htmlValue %>";
      }

      createTable();
    </script>
    <hr>
    <%--<%@ include file="afternoon.jsp" %>--%>
    <jsp:include page="afternoon.jsp"></jsp:include>
    <%--<jsp:forward page="afternoon.jsp"></jsp:forward>--%>
    <hr>
    <a href="/Lab4/Afternoon">Afternoon servlet</a>
  </body>
</html>
