<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<%
	String erro = (String) request.getAttribute("erro");

%>	
	
<!doctype html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	</div>

	<div class="formulario">
		<main class="form-signin text-center">
			<form method="post" action="login">
				<div>
					<input type="email" class="form-control" id="floatingInput" name="email"
						placeholder="E-mail"> 
						<label class="floatingInput"></label>
				</div>

				<div>
					<input type="password" class="form-control" id="floatingPassword" name="senha"
						placeholder="Senha"> 
					<label for="floatingPassword"></label>
				</div>
				<div class="button-entrar-index">
					<input class="w-75 btn btn-lg " type="submit" value="Entrar"></input>
				</div>

				<div class="button-cadastrar-index">
					<a href="pg-cadastro.jsp" class="w-75 btn btn-lg " type="submit">Cadastrar</a>
					<p>Você não possui cadastro?</p>
				</div>
				<p class="mt-5 mb-3 text-muted ">&copy; 2022</p>
				<div>
					<p><%
						if(erro != null){
							out.print(erro);
						}%>
					</p>
				</div>
			</form>
		</main>
	</div>


</body>
</html>
