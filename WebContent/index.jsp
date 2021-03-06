<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="UTF-8">
<title>Http Fundamentals</title>
<style type="text/css">

.wrap {
            width: 250px;
            height: auto;
            margin: auto;
            margin-top: 15%;
            box-shadow: 2px 2px 2px #666666;
            height: 300px;
            width: 500px;
            background-color: #66BB6A;
        }

        .wrap input {
            border: none;
            background: #fff;
            font-family: Lato;
            font-weight: 700;
            display: block;
            height: 40px;
            outline: none;
            width: calc(100% - 24px);
            margin: auto;
            padding: 6px 12px 6px 12px;
        }

        .avtar {
            width: 100%;
            margin: auto;
            width: 100px;
            border-radius: 100px;
            height: 100px;
            background: #448ed3;
            position: relative;
            bottom: -15px;
        }

        .image {
            width: 100px;
            height: 100px;
            margin-left: 40%;
            margin-bottom: 20px;
            position: relative;
            bottom: 45px;
        }

        .bar {
            width: 100%;
            height: 1px;
            background: #fff;
        }

        .bar i {
            width: 95%;
            margin: auto;
            height: 1px;
            display: block;
            background: #d1d1d1;
        }

        .wrap input[type="text"] {
            border-radius: 7px 7px 0px 0px;
        }

        .wrap input[type="password"] {
            border-radius: 0px 0px 7px 7px;
        }

        .button-container {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }


        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 5px 15px 5px 15px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin-top: 20px;
            margin-right: 5px;
            -webkit-transition-duration: 0.4s;
            transition-duration: 0.4s;
            cursor: pointer;
            border-radius: 5px;
        }

        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        .button1:hover {
            background-color: #4CAF50;
            color: white;
            transform: translateY(4px);
        }

        .button2 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        .button2:hover {
            background-color: #4CAF50;
            color: white;
            transform: translateY(4px);
        }
         .nav-container {

            display: flex;
            justify-content: space-between;
            height: 70px;
            top: 0;
            position: fixed;
            width: 100%;
            background-color: #4CAF50;
        }
         .menus ul {
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
            position: fixed;
            top: 0;
            width: 100%;
        }

        .menus li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            margin-right: 20px;
        }

        .menus li {
            float: right;
            list-style: none;
        }

</style>
</head>

<body>
<!-- Start of header -->
<div class="row nav-container">
        <div class="col_6"></div>
        <div class="col_6 menus">
            <li><a href="">Update</a></li>
            <li><a href="">Details</a></li>
            <li><a href="">Students</a></li>
        </div>
    </div>
   <!-- End of header -->

	<div class="wrap">

		<div class="image">
			<img src="./images/man.svg">
		</div>
		<form action="${pageContext.request.contextPath}/login" method="get">
			<input type="text" name = "username" placeholder="username" required>
			<div class="bar">
				<i></i>
			</div>
			<input type="password" name = "password" placeholder="password" required>
			<div class="button-container">
				<button class=" button button1" type="submit" name ="action" value="login">Login</button>
				<button class="button button2" type="submit" name ="action" value="register">Register</button>
			</div>
		</form>

	</div>


</body>

</html>
