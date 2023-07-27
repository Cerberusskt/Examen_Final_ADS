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
<section>
	<form action ="resultado_categoria.jsp">
	<p style ="color:white; font-family:GungSuh; font-size:25px;">
	Seleccione un opcion: 
	</p>
	<%	
	Categoria categoria=new Categoria();
	String combo=categoria.mostrarCategoria();
	out.print(combo);
	%>
	<input type="submit"/>
	</form>
</section>
</body>
</html>