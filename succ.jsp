# stu
<%@ page language="java" contentType="text/html; charset=utf-8"

	pageEncoding="utf-8"%>

<%@page import="java.util.*,java.io.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Insert title here</title>

<style type="text/css">

.qc {

	position: fixed;

	top: 30%;

	left: 40%;



}

</style>

</head>

<%

	String accountNumber = (String) session.getAttribute("accountNumber");

%>

<body>

	<%

		String password = request.getParameter("password");

		String userName = "";

		try {

			Scanner sc = new Scanner(new File("userlist.txt"));

			while (sc.hasNextLine()) {

				String line = sc.nextLine();

				String ss[] = line.split("\\s+");

				if (ss[0].equals(accountNumber)) {

					userName = ss[2];

					break;

				}

			}

			sc.close();

		} catch (Exception e) {

		}

	%>

	

	<div class="qc">

		<font size="5" color="pink">Hi:<%=userName%></font> <br>
          <img  src="C:\Users\liyu\Desktop/q.jpg" width="400px" height="300px"><br>
		<font size="5" color="green">当前时间：<%=new Date().toLocaleString()%></font>

	</div>



</body>

</html>
