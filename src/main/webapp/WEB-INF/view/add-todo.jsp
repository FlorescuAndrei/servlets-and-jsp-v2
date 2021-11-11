<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<div class="container">
		
		Welcome ${name}!
		<p>Add Todo:</p>
		
		<form action="/add-todo.do" method="post">
			<fieldset class="form-group">
				<label>Description</label>
				<input type="text" name="todoname" class="form-control"/> 
			</fieldset><br>
			<fieldset class="form-group">
				<label>Category</label> 
				<input type="text" name="todocategory" class="form-control"/>
			</fieldset><br>
			<input type="submit" value="Add Todo" class="btn btn-success"/>
		</form>

	</div>


<%@ include file="../common/footer.jspf" %>