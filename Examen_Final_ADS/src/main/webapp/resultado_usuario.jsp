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

		<%
	String nombre=request.getParameter("txtNombre");
	String cedula=request.getParameter("txtCedula");	
	String edad=request.getParameter("edad");
	String contraseña=request.getParameter("txtContraseña");
	String estadoCivil=request.getParameter("cmbECivil");
	String residencia=request.getParameter("rdResidencia");
	String foto=request.getParameter("fileFoto");
	String fechas=request.getParameter("fecha");
	String color=request.getParameter("colorFavorito");
	String email=request.getParameter("txtemail");

	Usuario usuario=new Usuario();
	out.print(usuario.ingresarUsuario(nombre,cedula,edad,estadoCivil,color,contraseña,residencia,email));
		
%>
	<br><font color=<%=request.getParameter("colorFavorito")%>> Este es tu color favorito </font>
	
	<%
	out.print(usuario.consultarUsuarios());
	%>
		</section>

</body>
</html>