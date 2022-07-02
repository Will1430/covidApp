<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
		</nav>>
	</div>

	<div class="formulario">
		<main class="form-signin">
			<form method="post" action="insert">
				<div class="form-row">
					<div class=" mb-3">
						<label for="validationDefault01" >Nome completo</label> <input name="nome"
							 type="text" class="form-control" id="validationDefault01" required>
					</div>
					<div class=" mb-3">
						<label for="validationDefaultUsername" >Usuário</label>
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="inputGroupPrepend2">@</span>
							</div>
							<input type="text" class="form-control" name="email"
								id="validationDefaultUsername" placeholder="Usuário"
								aria-describedby="inputGroupPrepend2" required>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class=" mb-3">
						<label for="validationDefault03" >Cidade</label> <input type="text" name="cidade"
							class="form-control" id="validationDefault03" required>
					</div>
					<div class=" mb-3 ">
						<label for="validationDefault04" >Estado</label> <input type="text" name="estado"
							class="form-control" id="validationDefault04" required>
					</div>
					<div class=" mb-3">
						<label for="validationDefault05" >CEP</label> <input type="text" name="cep"
							class="form-control" id="validationDefault05" required>
					</div>
					<div class=" mb-3">
						<label for="validationDefault05" >Senha</label> <input type="password" name="senha"
							class="form-control" id="validationDefault05" required>
					</div>
				</div>
				<div class="form-group">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="invalidCheck2" required> <label
							class="form-check-label" for="invalidCheck2"> Concordo
							com os termos e condições </label>
					</div>
				</div>
				<div class="button-cadastrar">
					<input class="w-75 btn btn-lg " type="submit" value="Cadastrar"></input>
				</div>
				<div class="button-entrar">
					<a href="index.jsp" class="w-75 btn btn-lg " type="submit">Entrar</a>
					<p>Você já possui cadastro?</p>
				</div>
			</form>
		</main>
	</div>


</body>
</html>
