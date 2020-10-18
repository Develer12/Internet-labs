<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<hr>
<h1>Session</h1>
<form action="/Lab9_war_exploded/Ccc" method="get">
    <input type="text" name="value1" placeholder="Value1"/><br/>
    <input type="text" name="value2" placeholder="Value2"/><br/>
    <input type="text" name="value3" placeholder="Value3"/><br/>
    New <input type="radio" name="CBean" value="new" label="New" title=""/><br/>
    Old <input type="radio" name="CBean" value="old" label="Old" title=""/><br/>
    <button type="submit">click</button>
</form>
</body>
</html>
