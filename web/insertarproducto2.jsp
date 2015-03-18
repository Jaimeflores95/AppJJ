<%-- 
    Document   : insertarproducto2
    Created on : 06/03/2015, 09:46:18 PM
    Author     : AppJJ
    Descripción: Obtiene los datos del formulario insertarproducto
--%>



<%@page import="com.canteras.clases.Producto"%>
<%@page import="com.canteras.dao.EmpresaDAO"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Con esto verificamos que el empleado ya esta autentificado
    if (session.getAttribute("nombrempleado") == null && session.getAttribute("tipoempleado").toString().equals("1")) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!inicio codigo plantilla >
        
        <meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />

        <!fin codigo plantilla >
        
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
    <link rel="stylesheet" href="css/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        <title>Insertar Cliente 2</title>
        
        <!inicio codigo plantilla>
        <script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="lib/jquery.coda-slider-2.0.js"></script>
                
                <!-- Initialize each slider on the page. Each slider must have a unique id -->
	<script type="text/javascript">
	$().ready(function() {
	$('#coda-slider-2').codaSlider({
		autoSlide: true,
		autoSlideInterval: 6000,
		autoSlideStopWhenClicked: true	
			
	});
 });
</script>

<script type="text/javascript" src="lib/pirobox.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 400, //animation speed
			bg_alpha: 0.1, //background opacity
			slideShow : false, // true == slideshow on, false == slideshow off
			slideSpeed : 4, //slideshow duration in seconds(3 to 6 Recommended)
			close_all : '.piro_close,.piro_overlay'// add class .piro_overlay(with comma)if you want overlay click close piroBox

	});
});
</script>

<link href="style.css" rel="stylesheet" type="text/css" />

        <!fin codigo plantilla>
    </head>
    <body>
          <!nicio codigo de plantilla>
  
<div id="bg_img">
    
			<div id="site_div">
                             
				<div id="header">
                                    
                                        
                                    <div id="logo">
						<h1><a href="#">AppJJ</a></h1>
                                                <image src="images/LogotipoMin.jpg" alt="" />
                                                <div>
                                                    <a href="#"><small> by ConMonisa</small></a>
                                                </div>
						
                                                
					</div>
                                    <div id="cantera">
						<h1>CANTERAS GALINDO</h1>
        Bienvenido(a), <%=session.getAttribute("nombrempleado")%>
        <br /><br />
        <%

            //de acuerdo al tipo de empleado mostramos el contenido correspondiente
            if (session.getAttribute("tipoempleado").toString().equals("1")) {


        %>
					</div>
        <!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	<li class="topmenu"><a href="home.jsp" style="height:32px;line-height:32px;"><img src="css/unlocked.png" alt=""/>Inicio</a></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/users.png" alt=""/>Clientes</span></a>
	<ul>
		<li class="subfirst"><a href="insertarcliente.jsp">Nuevo</a></li>
		<li><a href="listaclientes.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarclientes.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/users1.png" alt=""/>Empleados</span></a>
	<ul>
		<li class="subfirst"><a href="insertarempleado.jsp">Nuevo</a></li>
		<li><a href="listaempleados.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarempleados.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/cube.png" alt=""/>Producto</span></a>
	<ul>
		<li class="subfirst"><a href="insertarproducto.jsp">Nuevo</a></li>
		<li><a href="listaproductos.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarproductos.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/cart3.png" alt=""/>Ventas</span></a>
	<ul>
		<li class="subfirst"><a href="insertarventa.jsp">Nuevo</a></li>
		<li><a href="listaventas.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarventas.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="Salir" style="height:32px;line-height:32px;"><img src="css/lock2.png" alt=""/>Salir</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->

          <%
            }
        else{
            %>

          <!-- Start css3menu.com BODY section -->
<ul id="css3menu1" class="topmenu">
<input type="checkbox" id="css3menu-switcher" class="switchbox"><label onclick="" class="switch" for="css3menu-switcher"></label>	<li class="topmenu"><a href="home.jsp" style="height:32px;line-height:32px;"><img src="css/unlocked.png" alt=""/>Inicio</a></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/users.png" alt=""/>Clientes</span></a>
	<ul>
		<li class="subfirst"><a href="insertarcliente.jsp">Nuevo</a></li>
		<li><a href="listaclientes.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarclientes.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/users1.png" alt=""/>Empleados</span></a>
	<ul>
		<li class="subfirst"><a href="insertarempleado.jsp">Nuevo</a></li>
		<li><a href="listaempleados.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarempleados.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/cube.png" alt=""/>Producto</span></a>
	<ul>
		<li class="subfirst"><a href="insertarproducto.jsp">Nuevo</a></li>
		<li><a href="listaproductos.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarproductos.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:32px;line-height:32px;"><span><img src="css/cart3.png" alt=""/>Ventas</span></a>
	<ul>
		<li class="subfirst"><a href="insertarventa.jsp">Nuevo</a></li>
		<li><a href="listaventas.jsp">Lista</a></li>
		<li class="sublast"><a href="buscarventas.jsp">Buscar</a></li>
	</ul></li>
	<li class="topmenu"><a href="Salir" style="height:32px;line-height:32px;"><img src="css/lock2.png" alt=""/>Salir</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
            
            
<!--Fin-->
           
        <%
            }
        %>


<h2>Nuevo Producto</h2>
        
        <%
        
            EmpresaDAO edao=new EmpresaDAO();
            
        
                Producto p=new Producto();
                p.setNombreproducto(request.getParameter("nombreproducto"));
                p.setPrecioproducto(Integer.parseInt(request.getParameter("precioproducto")));
                edao.insertarProducto(p);
                out.println("El cliente se ha insertado correctamente");
                
            
        %>
        
        
        <br /><br />
            <br /><br />
            <br /><br />
            <br /><br />
            
        
          <div id="footer_bot">
					<p>Copyright statement. Designed by <a href="Conmonisatrejo14@gmai.com">@ConMonisa</a></p>
					<p><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
					
				</div>
                                </body>
</html>
