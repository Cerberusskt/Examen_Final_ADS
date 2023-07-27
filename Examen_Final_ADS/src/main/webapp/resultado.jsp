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
<body>
<p>Resultado de producto</p>
<% int id=Integer.parseInt(request.getParameter("Id"));
int cat=Integer.parseInt(request.getParameter("cmbCategoria"));
String desc=request.getParameter("nombre");
int cant=Integer.parseInt(request.getParameter("cantidad"));
Double precio=Double.parseDouble(request.getParameter("precio"));
String foto=request.getParameter("fileFoto");	
Producto producto=new Producto();

out.print(producto.ingresarProducto(id,cat,desc,cant,precio));
%>
</body>
</html>