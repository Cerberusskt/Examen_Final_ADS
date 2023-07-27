<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
	<head>
		<title>ASADERO EL POLLASO DEL OSO</title>
		<link href="css/estilos.css" rel="stylesheet" type="text/css">
	</head>
<body>
	<main>
		<header>
			<h1>ASADERO EL POLLASO DEL OSO</h1>
			<h2 class="destacado">Expertos en el arte del carbon</h2>
			<h4 id="favorito">Parilladas deliciosas y al mejor precio!</h4>
		</header>
		<nav>
			<a href="index.jsp"> Inicio </a> 
			<a class="active" href="compra.jsp">Ver Productos</a> 
			<a href="categoria.jsp">Buscar Por Categoria</a> 
			<a href="registrar.jsp">Registrar Productos</a>
		</nav>
		<div class="agrupar">
		<%
	Producto producto=new Producto();
	out.print(producto.consultarTodo());
	%>
		</div>
		<section class="contenedor">
				<h3>CHULETA + PAPAS FRITAS</h3>
				<img class="producto" alt="Parrillada" src="imagenes/chuleta.jpg" width="250" height="250">
				<p class="precio">$ 4.50</p>
				<p> Descripción Del Plato: Delecioso plato de chuleta de chancho acompañado de papas fritas y ensalada casera de lechuga y tomate </p>
				
				<h3>MOLLEJAS</h3>
				<img class="producto" alt="PORCION DE MOLLEJAS AL AJILLO"
					src="imagenes/mollejas.jpg" width="250" height="250">
				<p class="precio">$ 3.50</p>
				<p> Descripción Del Plato: Delecioso plato de mollejas asadas acompañado de una porcion de mote y salsa de la casa </p>

				<h3>SALCHIPAPA</h3>
				<img class="producto" alt="SALCHIPAPA"
					src="imagenes/salchipapa.jpg" width="250" height="250">
				<p class="precio">$ 2.50</p>
				<p> Descripción Del Plato: Delecioso plato de salchipapa casera acompañado de salsas a su elección</p>
				
				<h3>PAPI POLLO</h3>
				<img class="producto" alt="PAPI POLLO"
					src="imagenes/papipollo.jpg"width="250" height="250">
				<p class="precio">$ 3.00</p>
				<p> Descripción Del Plato: Delecioso plato de papi pollo acompañado de salsas a su elección </p>
				
				<h3>BROCHETAS DE POLLO</h3>
				<img class="producto" alt="BROCHETAS DE POLLO" src="imagenes/pinchos.jpg" width="250" height="250">
				<p class="precio">$ 1.75</p>
				<p> Descripción Del Plato: Deleciosas brochetas de pollo acompañado con papas fritas y salsa a su eleccion</p>
				
				<h3>CHOCLOS CON QUESO</h3>
				<img class="producto" alt="CHOCLOS CON QUESO" src="imagenes/choclo.jpg" width="250" height="250">
				<p class="precio">$ 1.25</p>
				<p> Descripción Del Plato: Delecioso plato de choclo asado con salsa blanca y queso rallado </p>
		</section>
		<footer>
			<ul>
				<li><a href="https://www.instagram.com/elpollasodeloso/">Instagram</a></li>
				<li><a href=https://asados-el-pollazo-del-oso.negocio.site/?utm_source=gmb&utm_medium=referral>Pagina Oficial</a></li>
			</ul>
		</footer>
	</main>
</body>
</html>