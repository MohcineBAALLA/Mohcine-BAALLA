
<%@page import="com.util.db.Book"%>
<%@page import="java.util.List"%>
<%@page import="com.util.db.BookManager"%>
<%@page import="com.util.db.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>La gestion des livres</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/bootstrap.js"></script>
</head>
<body>
	

	
	<%
	Student s = (Student) session.getAttribute("student");
	BookManager bm = new BookManager();
	%>
	
	<%
	if (request.getParameter("op") != null) {
		if (request.getParameter("op").equals("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			bm.deleteBook(id);
		}
	}
	%>
	
	<jsp:include page="navBar.jsp"></jsp:include>
		<%
		if (request.getParameter("res") != null) {
		if (request.getParameter("res").equals("succ")) {
		%>
		<li class="list-group-item list-group-item-success">Livre a été ajouté avec succèe !</li>
		<%
		}}
		%>

	
	<%
	List<Book> ab = bm.allBooks();
	%>

	<div class="Container m-5">
		
		
		<h4>
			<%=s.getLogin().toUpperCase()%>
		</h4>
		
		<p>La gestion des livres</p>
		<div class="row ">
			<div class="col-4"></div>
			<div class="col-1 offset-1 ">
				<div class="row">
					<div class="col-1 col-1 offset-1">

						<a href="addBook.jsp" class="btn btn-outline-success px-5 py-2 m-2">Ajouter</a>
					</div>
				</div>
			</div>
			<hr>
			<di class="container">
			<div class="row col-12">
			<%
			for (Book b : ab) {
			%>
			<div class="col-4 mt-4">
				<div class="card">
					<div class="card-header">
						<div class="row justify-content-between">
							<div class="col-5">
								<h5><%=b.getName().toUpperCase()%></h5>
							</div>
							<div  class="col-5">
								<a href="?op=delete&id=<%=b.getId()%>"
									class="btn btn-danger px-4 py-2" >Supprimer</a>
							</div>
						</div>

					</div>
					<div class="card-body">

						<p class="card-text ">
							<b>Categorie : </b><%=b.getCategorie()%>
						</p>
						<p class="card-text ">
							<b>Autheur : </b><%=b.getAuthor()%>
							
						</p>

					</div>
				</div>
			</div>
			<%
			}
			%>
			</div>
			</di>
		</div>
	</div>

</body>
</html>