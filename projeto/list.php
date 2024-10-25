<?php

	try{
			$conn = new PDO("mysql:host=localhost;dbname=db_empresa_fabricio", "root", "");
			
			$stmt = $conn->prepare("SELECT * FROM tb_funcionario");
			$stmt->execute();
			$rows = $stmt->fetchAll();
			
			foreach($rows as $row){
				echo $row["mat"] . " - " . $row["nome"] . " - " . $row["sal"] . " - " . $row["ano_nasc"] . " - " . $row["sexo"] . "<br>" ;   
			}
		} catch(PDOException $e) {
			echo e->getMessage();
		}

?>

<a href="index.php">Voltar</a>