<%--
  Created by IntelliJ IDEA.
  User: trongduong
  Date: 8/10/2019
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
            integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
            integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
            crossorigin="anonymous"></script>
    <style>
        .myError {
            color:red;
        }
    </style>
</head>
<body>

    <form style="max-width: 500px; margin: auto;" action="/phone/add" method="post">
        <h2>Add phone</h2>
        <div class="form-group">
            <label>RollId</label>
            <input type="text" name="id" class="form-control">
            <div class="myError"></div>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control">
            <div class="myError"></div>
        </div>
        <div class="form-group">
            <label>Brand</label>
            <select name="brand" id="brand" class="form-select-button">
                <option value="1">Apple</option>
                <option value="2">Samsung</option>
                <option value="3">Nokia</option>
                <option value="0">Others</option>
            </select>
            <div class="myError"></div>
        </div>
        <div class="form-group">
            <label>Price</label>
            <input type="text" name="price" class="form-control">
            <div class="myError"></div>
        </div>
        <div class="form-group">
            <label>Description</label>
            <input type="text" name="description" class="form-control">
            <div class="myError"></div>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Save"/>
            <input type="reset" class="btn btn-primary" value="Reset"/>
        </div>
    </form>
    <script>

    </script>
</body>
</html>
