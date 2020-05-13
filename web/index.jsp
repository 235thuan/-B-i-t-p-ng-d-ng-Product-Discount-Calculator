<%--
  Created by IntelliJ IDEA.
  User: thuan
  Date: 5/13/20
  Time: 1:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculation discount</title>
    <style>
      table{
        border-collapse: collapse;
      }
      table,td,th{
        border: 1px solid black;
      }
      h1{
        animation-duration: 1s;
        animation: changecolor 1s steps(5) infinite;
      }
      @keyframes changecolor {
        from {color: blue;}
        to { color: red}
      }
    </style>
  </head>
  <body>
  <h1>Calculator Product Discount</h1>
  <form method="post" action="/calculationDiscount">
  <div>
    <table>
    <tr>
      <th><p>Product Description</p></th>
      <th><p>List Price</p></th>
      <th><p>Discount Percent</p></th>
    </tr>
    <tr>
      <td><input type="text" name="des" placeholder="Enter product information"></td>
      <td><input type="number" name="price" placeholder="Enter the price"></td>
      <td><input type="number" name="discount" placeholder="Enter % discount"></td>
    </tr>
    </table>
    <input type="submit" id="submit" value ="Calculate Discount">
  </div>
  </form>
  </body>
</html>
