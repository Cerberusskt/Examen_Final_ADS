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
			<a href="venta.jsp">Carrito compras</a>
		</nav>
		<div class="agrupar">
			<section>
			<img src="imagenes/parillada.png" width="600" height="400" />
				<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Formulario Venta Producto</h3>
				<form action="resultado_venta.jsp" method="post">
<form action="resultado_venta.jsp"method="post">
	<table border="0">
	<tr>
	<td>USUARIO: </td>
	<td><input type=int name="Id" minlength="2" required/>*</td>
	</tr>
	
	<tr>
	<td>PRODUCTO: </td>
	<td><input type="text" name="nombre"   required/>*</td>
	</tr>
	
	<tr>
	<td>CANTIDAD: </td>
	<td><input type="text" name="nombre"   required/>*</td>
	</tr>
	
	<tr>
	<td><br><input type="submit" value="ENVIAR" "/><td/><br>
	<input type="reset" value="LIMPIAR"/><br>
	</tr>
	</table>

</body>
</html>