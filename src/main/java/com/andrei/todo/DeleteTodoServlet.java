package com.andrei.todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.andrei.login.LoginService;
import com.andrei.todo.Todo;
import com.andrei.todo.TodoService;


@WebServlet(urlPatterns = "/delete-todo.do")
public class DeleteTodoServlet extends HttpServlet {
	
	private TodoService todoService = new TodoService();
	 
	 

	 protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		    	   
		    	  Todo todo = new Todo( req.getParameter("todo"), null);
		    	  System.out.println(todo);
		    	  
		    	  todoService.deleteTodo(todo);
		    	
		    	  resp.sendRedirect("/list-todo.do");
		    	  
		    	  
		       
		    }


	

}
