<%@page import="model.Usuario"%>w
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<title>CoviApp</title>

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>



<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">
</head>


<body>
	<div class="logo">
		<nav>
			<h1>CovidApp</h1>
		</nav>
		</a> <a style="color: white" href="logout" class="btn-lg">Sair</a>
			<a class="btn-lg"> 
			<%
			
 				Usuario u = (Usuario) session.getAttribute("Logado");
 				if (u != null) {
 					out.print(u.getEmail());
				} else {
 					response.sendRedirect("index.jsp");
				 }
 			%>
		
		</a>
	</div>

	<div class=" menu-covidApp"
		style="background-image: url(img/covid-background.png);">
		<div class="button-menu-covidApp">
			<div>
				<a href="img/dadosCovid.png" download="dadosCovid.png">
					<button class="column-sm button-menu1  btn btn-lg " type="button" onclick="confirm('Você realmente deseja fazer o download ?')">Obterdados</button>
				</a>
			</div>
		</div>
	</div>
	<p class=" paragrafo-covidApp mt-5 mb-3 text-muted ">&copy; 2022</p>
</body>
</html>
