<%-- 
    Document   : editarcliente2
    Created on : 26/02/2015, 09:54:42 PM
    Author     : ConMonisa
    Descripción: Este Jsp obtiene los datos del formulario para editar el cliente
--%>



<%@page import="com.canteras.dao.EmpresaDAO"%>
<%@page import="com.canteras.clases.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Con esto verificamos que el usuario ya esta autentificado
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
        <title>.:.CANTERAS GALINDO.:.</title>
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
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
        
        
         

 <h2>Editar cliente</h2>
        <%

            Cliente c = new Cliente();
            EmpresaDAO edao = new EmpresaDAO();

           //obtenemos los datos del formulario y los asignamos al objeto
            c.setIdcliente(Integer.parseInt(request.getParameter("idcliente")));
            c.setNombrecliente(request.getParameter("nombrecliente"));
            c.setApellidoscliente(request.getParameter("apellidoscliente"));
            c.setDomiciliocliente(request.getParameter("domiciliocliente"));
            c.setEmailcliente(request.getParameter("emailcliente"));
            c.setTelefonocliente(request.getParameter("telefonocliente"));
            c.setRFC(request.getParameter("RFC"));
            //Verificamos cual boton presiono el  cliente y hacemos la llamada correspondiente
            if (request.getParameter("guardar")!=null) {
                    edao.modificarCliente(c);
                    out.println("Se modifico el registro");
                }
            else if (request.getParameter("eliminar")!=null) {
                    edao.eliminarCliente(c.getIdcliente());
                    out.println("Se elimino el registro");
                }else{
                response.sendRedirect("home.jsp");
                
            }
        %>
        
        <br /><br />
        <br /><br />
        <br /><br />
        <br /><br />
        <br /><br />
        
            <div id="footer_bot">
					<p>Copyright statement. Designed by <a href="Conmonisatrejo14@gmai.com">@ConMonisa</a></p>
					<p><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
					
				</div>

                                             <!fin codigo de plantilla>
    </body>
</html>
