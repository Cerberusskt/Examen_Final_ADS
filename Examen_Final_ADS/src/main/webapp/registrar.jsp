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
			
		</nav>
<form action="resultado.jsp"method="post">
	<table border="2">
	<tr>
	<td>Codigo comida: </td>
	<td><input type=int name="Id" minlength="2" required/>*</td>
	</tr>
	
	<tr>
	<td>Categoria.<td>
	<%
	Categoria categoria = new Categoria();
	String combo = categoria.mostrarCategoria();
	out.print(combo);
	%></td>
	</tr>
	
	<tr>
	<td>Nombre: </td>
	<td><input type="text" name="nombre"   required/>*</td>
	</tr>
	
	<tr>
	<td>Cantidad: </td>
	<td><input type="int" name="cantidad"  required/>*</td>
	</tr>
	
	<tr>
	<td>Precio: </td>
	<td> <input type="int" name="precio" required/>*</td>
	</tr>
	
	
	<tr>
	<td>Imagen del Producto: </td>
	<td><input type="file"  name="fileFoto" accept=".zip, .jep, .jpg, .rar, .pdf" value="Examinar" required/></td>
	</tr>

	<tr>
	<td><input type="submit" value="REGISTRAR" "/><td/>
	<input type="reset" value="BORRAR"/>
	</tr></br>
	</table>
	<div class="agrupar">
		<section>
			<%
	//Producto producto=new Producto();
	//out.print(producto.editarProductoCategoria(2));
	//%>
</form>

</body>
</html>