<%@ page import="java.util.Date"%>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<div class="container">
		
		<div>
			<% Date date = new Date(); %>
			Current Date is: <%=date%>
			(Scriplet example, not recomanded to use)
			
			<p>Enter this values to login: name = Andrei, password = 111</p>
		</div>


		<form action="/login.do" method="POST">

			<p><font color="red">${errorMessage}</font></p>
	
			Enter your name <input type="text" name="name" />

			Enter your password <input type="text" name="password"/>

			<input type="submit" value="Logg In"/>
		</form>
		
	</div>
<%@ include file="../common/footer.jspf" %>


