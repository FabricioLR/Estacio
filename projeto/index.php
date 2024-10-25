<?php
	if ($_SERVER["REQUEST_METHOD"] === "POST"){
		try{
			$conn = new PDO("mysql:host=localhost;dbname=db_empresa_fabricio", "root", "");
			
			$stmt = $conn->prepare("INSERT INTO tb_funcionario VALUES (:mat, :nome, :sal, :ano_nasc, :sexo);");
			$stmt->Bindparam(":mat", $_POST["mat"]);
			$stmt->Bindparam(":nome", $_POST["nome"]);
			$stmt->Bindparam(":sal", $_POST["sal"]);
			$stmt->Bindparam(":ano_nasc", $_POST["ano_nasc"]);
			$stmt->Bindparam(":sexo", $_POST["sexo"]);
			$result = $stmt->execute();
			
			if ($result){
				header("location: index.php");
			} else {
				echo "Error on insert";
			}
		} catch(PDOException $e) {
			echo e->getMessage();
		}
	}
?>



<form method="POST">
	<table>
		<tr>
			<td>Matrícula</td>
			<td><input type="text" name="mat"/></td>
		</tr>
		<tr>
			<td>Nome</td>
			<td><input type="text" name="nome"/></td>
		</tr>
		<tr>
			<td>Salário</td>
			<td><input type="text" name="sal"/></td>
		</tr>
		<tr>
			<td>Ano de nascimento</td>
			<td><input type="text" name="ano_nasc"/></td>
		</tr>
		<tr>
			<td>Sexo</td>
			<td><input type="radio" id="sexo1" name="sexo" value="M" checked />Masculino</td>
			<td><input type="radio" id="sexo2" name="sexo" value="F"/>Feminino</td>
		</tr>
		<tr>
			<td><input type="submit" value="Cadastrar"/></td>
		</tr>
	</table>
</form>

<a href="list.php">Listar funcionários</a>