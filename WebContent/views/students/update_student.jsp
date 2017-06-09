<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	
	<style>
        .margin {
            margin: 0;
            padding: 0;
        }

        .row {
            display: flex;
            flex-direction: row;
            align-items: center;
            border: 1px solid green;
        }

        .col_1 {
            width: 8.33%;
            border: 1px solid red;
        }

        .col_2 {
            width: 16.66%;
            border: 1px solid red;
        }

        .col_3 {
            width: 24.99%;
            border: 1px solid red;
        }

        .col_4 {
            padding: 0px 32px;

            width: 33.33%;
            border: 1px solid red;
        }

        .col_5 {
            width: 41.66%;
            border: 1px solid red;
        }

        .col_6 {
            width: 49.99%;
            border: 1px solid red;
        }

        .col_7 {
            width: 58.33%;
            border: 1px solid red;
        }

        .col_8 {
            width: 66.66%;
            border: 1px solid red;
        }

        .col_9 {
            width: 74.99%;
            border: 1px solid red;
        }

        .col_10 {
            width: 83.33%;
            border: 1px solid red;
        }

        .col_11 {
            width: 91.66%;
            border: 1px solid red;
        }

        .col_12 {
            width: 100%;
            border: 1px solid red;
        }

        .nav-container {

            display: flex;
            justify-content: space-between;
            height: 60px;
            top: 0;
            position: fixed;
            width: 100%;
            background-color: mintcream;
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

        .margin-top {
            margin-top: 20%;
        }

        .button-container {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
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
        }

        .button1 {
            background-color: white;
            color: black;
            border: 2px solid #4CAF50;
        }

        .button1:hover {
            background-color: #4CAF50;
            color: white;
        }

        .button2 {
            background-color: white;
            color: black;
            border: 2px solid #008CBA;
        }

        .button2:hover {
            background-color: #008CBA;
            color: white;
        }

        .inputfields {

            display: flex;
            flex-direction: column;
            align-items: center;
            margin-left: 7%;
            margin-top: 5%;
        }

        .inputBox {
            display: flex;
            flex-direction: row;
            align-items: center;
        }

        .textbox {
            height: 30px;
        }
    </style>
</head>
<body>
	<!--Start of nav container -->
    <div class="row nav-container">
        <div class="col_6"></div>
        <div class="col_6 menus">
            <li><a href="">Update</a></li>
            <li><a href="">Details</a></li>
            <li><a href="">Students</a></li>
        </div>
    </div>

    <!-- End of nav container -->

    <!--Start of input fields -->
    <div class="row margin-top">

        <div class="col_4"></div>
        <div class="col_4 inputBox">
            <div class="col_2 ">
                Name Address Course
            </div>
            <form action="./update" class="inputfields">
            	<input class="textbox" type="text" name="rollno" value="${param.rollno}" size="30" placeholder="Roll No">
                <input class="textbox" type="text" name="name" value="${param.name}" size="30" placeholder="Name Of Student">
                <input class="textbox" type="text" name="address" value="${param.address}" size="30" placeholder="Address">
                <input class="textbox" type="text" name="course" value="${param.course }"size="30" placeholder="Course">
                
                 <!--Start of Buttons -->
    <div class="row">
        <div class="col_4"></div>
        <div class="col_4 button-container">
            <button class="button button1" type="submit" name="action" value="Update">UPDATE</button>
            <button class="button button2" type="submit" name="action" value="Back">BACK</button>

        </div>
        <div class="col_4"></div>
    </div> 

    <!--End of buttons block -->
                
               
            </form>
        </div>
        <div class="col_4"></div>
    </div>
    <!--End of input fields -->
    
    
      <!-- Start of message cotainer -->
      
        <div class="row">
        <div class="col_4"></div>
        <div class="col_4 message-container">
        
        <c:if test="${message != null }">
        
         <c:choose>
        	<c:when test="${message == false}">
        		<h4 style="color:red"> Message : Error not updated !</h4>
        	</c:when>
        	<c:otherwise>
        		<h4 style="color:green"> Message : Successfully  updated !</h4>
        	</c:otherwise>
        </c:choose>
        
        
        </c:if>
        
       
            
            

        </div>
        <div class="col_4"></div>
    </div>

    <!-- End of message cotainer -->

   
	
</body>
</html>	