<%--
  Created by IntelliJ IDEA.
  User: savanna
  Date: 7/1/21
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <jsp:include page="partials/head.jsp">
            <jsp:param name="title" value="Order Pizza!" />
        </jsp:include>
    </head>
    <body>
        <div class="container mt-3">
            <form action="/pizza-order" method="POST">
                <label for="size">Size</label>
                <select name="size" id="size">
                    <option value="small">Small</option>
                    <option value="medium">Medium</option>
                    <option value="large">Large</option>
                </select>
                <br>
                <label for="crust_types">Crust</label>
                <select name="crustTypes" id="crust_types">
                    <option value="thinCrust">Thin</option>
                    <option value="stuffedCrust">Stuffed</option>
                </select>
                <br>
                <label for="sauceType">Sauce</label>
                <select name="sauceType" id="sauceType">
                    <option value="marinara">Marinara</option>
                    <option value="bbq">BBQ</option>
                </select>
                <br>
                <label for="sausage">sausage</label>
                <input name="toppings" id="sausage" type="checkbox" value="sausage">
                <br>
                <label for="pineapple">pineapple</label>
                <input name="toppings" id="pineapple" type="checkbox" value="pineapple">
                <br>
                <label for="peperoni">peperoni</label>
                <input name="toppings" id="peperoni" type="checkbox" value="peperoni">
                <br>
                <label for="cheese">cheese</label>
                <input name="toppings" id="cheese" type="checkbox" value="cheese">
                <br>
                <label for="address">Address</label>
                <input id="address" name="address" type="text">
                <br>
                <input type="submit" value="Place Order">
            </form>
        </div>
    </body>
</html>