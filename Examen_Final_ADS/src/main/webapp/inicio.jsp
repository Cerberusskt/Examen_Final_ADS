<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title>ASADERO EL POLLAZO DEL OSO</title>
		<link href="css/estilos.css" rel="stylesheet" type="text/css">
	</head>
<body>
	<main>
		<header>
			<h1>ASADERO EL POLLAZO DEL OSO</h1>
			<h2 class="destacado">Expertos en el arte del carbon</h2>
			<h4 id="favorito">Parilladas deliciosas y al mejor precio!</h4>
		</header>
		<nav>
			<a class="active" href="compra.jsp">Ver Productos</a> 
			<a href="categoria.jsp">Buscar Por Categoria</a> 
			<a href="registrar.jsp">Registrar Productos</a>
			<a href="inicio.jsp">Inicio Session</a>
		</nav>
		<div class="agrupar">
			<section>
			<img src="imagenes/parillada.png" width="600" height="400" />
				<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Inicio de Session</h3>
				<form action="resultado_usuario.jsp" method="post">

	<table border="0">
				<tr>
				<td>Nombre:</td>
				<td><input type="text" name="txtNombre"  required/>*</td>
				</tr>
				<tr>
				<td>Cedula:</td>
				<td><input type="char" name="txtCedula"  minlength="10" required/>*</td>
				</tr>	
							
				<tr>
				<td>Contraseña:</td>
				<td><input type="password" name="txtContraseña"  minlength="5" required/>*</td>
				</tr>
				
				<tr>
				<td>Edad:</td>
				<td><input type="int" name="edad"  minlength="1" required/>*</td>
				</tr>				
				
				<tr>
				<td>Estado Civil:</td>
				<td><select name="cmbECivil">
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viudo">Viudo</option>				
				</select></td>
				</tr>
				
				<tr>
				<td> Lugar de Residencia:</td>
				<td><input type="radio" name="rdResidencia" value="Sur" />Sur 
				<input type="radio" name="rdResidencia" value="Norte" />Norte
				<input type="radio" name="rdResidencia"value="Centro" />Centro
				</td>
				</tr>
				
				<tr>
				<td>Foto:</td>
				<td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" required/>*</td>
				</tr>
				
				<tr>
				<td>Fecha de Nacimiento:</td>
				<td><input type="datetime-local" name="fecha" required/>*</td>
				</tr>
				
				<tr>
				<td>Color Favorito:
				<input type="color" name="colorFavorito" required/>*</td>
				</tr>
				
					
				<tr>
				<td>Correo Electronico:</td>
				<td><input type="email" name="txtemail" required/>*</td>
				</tr>
										
				<tr>
				<td><br><input type="submit" value="REGISTRAR" "/><td/><br>
				<input type="reset" value="BORRAR"/><br>
				</tr>
				</table>
</form>

</body>
</html>		
</div>
</body>
</html>