<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <script>
        function loadDoc() {
            let xmlHttp = new XMLHttpRequest();
            xmlHttp.onreadystatechange = function() {
                if (this.status == 200 && this.readyState == this.DONE) {
                    displayData(xmlHttp);
                }
            }

            xmlHttp.open("GET", "test.xml", true);
            xmlHttp.send();
        }

        function displayData(xmlHttp) {
            let xmlObj = xmlHttp.responseXML;
            let tableInnerHtml = "<tr><th>도시 이름</th></tr>\n";
            let cityList = xmlObj.getElementsByTagName("city")

            Array.from(cityList).forEach(element => {
                tableInnerHtml += "<tr><td>" + element.innerHTML + "</td></tr>\n";
            });

            document.getElementById("textarea").innerHTML = tableInnerHtml;

            let tableElement = document.createElement("table");
            tableElement.innerHTML = tableInnerHtml;
            document.getElementsByTagName("body")[0].append(tableElement);
        }

        window.onload = function() {
            loadDoc();
        }
    </script>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet?param=hello?!">Hello Servlet</a><br/><br/>
<a href="Register.html">Register.html</a><br/><br/>
<textarea id="textarea"></textarea>
</body>
</html>