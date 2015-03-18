<%-- 
    Document   : home
    Created on : 23/02/2015, 11:57:42 AM
    Author     : AppJJ
    Descripción: Muestra la página principal de la página web.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Con esto verificamos que el empleado ya esta autentificado
    if (session.getAttribute("nombrempleado") == null) {
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
                                            
                                            
					
					<div style="clear: both;"></div>
				</div><div class="inner_copy"></div>
				<div id="main">
					<div class="index_main_top"></div>
					<div class="main_bg">
						<div class="index_prev_grad">
						
							<div class="coda-slider-wrapper">
	<div class="coda-slider preload" id="coda-slider-2">
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
                                    <div class="prev_but_center_left">
									<div class="prev_img"><img src="images/cant2.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#">¿Quienes somos?</a><br/>
										Con mas de 12 años de experencia y duro trabajo Canteras Galindo ofrece extracción en piedra(cantera).Caracterizandonos de las demás por la calidad en nuestro porducto y la inovación al alcance de usted.</p>
									
									<p><a href="#">Contactenos</a><br/>
										Adolfo López Mateos No.10, San José Galindo <br/><br/>
                                                                                C.P 76820, San Juan del Río, Qro.<br/><br/>
                                                                                E-mail:canterasgalindo@hotmail.com </p>
									
								</div>
							</div>
				
			</div>
		</div>
		
		<div class="panel">
			<div class="panel-wrapper">
				
				<div class="prev_but_center">
								<div class="prev_but_center_left">
									<div class="prev_img"><img src="images/cant1.jpg" alt="" title=""/></div>
								</div>
								<div class="prev_but_center_right">
									<p><a href="#"> Historia </a><br/>
										Fundada por el Sr. Teofilo Pichardo Vazquez quien desde sus inicios busca comodidad en su empleados y satisfación en los clientes. <br/><br/>
										Es un orgullo para nosotros ofrecer a usted la mejor calidad en diseño natural a su vida.</p>
																		
								</div>
							</div>
				
			</div>
		</div>
				
			
	</div><!-- .coda-slider -->
</div>
						
						</div>	
                                            
                                            
                                            <div id="footer_bot">
					<p>Copyright statement. Designed by <a href="Conmonisatrejo14@gmai.com">@ConMonisa</a></p>
					<p><a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a></p>
					
				</div>

                                             <!fin codigo de plantilla>
                                            






    </body>
</html>
