 <%-- 
    Document   : insertarcliente
    Created on : 26/02/2015, 09:45:16 AM
    Author     : ConMonisa
    Descripción: Pemite mediante un formulario ingresar los datos del cliente.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //Con esto verificamos que el empleado ya esta autentificado
    if (session.getAttribute("nombrempleado") == null && session.getAttribute("tipompleado").toString().equals("1")) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!inicio codigo plantilla >
    <meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/superfish.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/tms-0.4.1.js"></script>
    <script src="js/slider.js"></script>
    <script type="text/javascript">
		$(function(){
			function equalHeight(group) {
				var tallest = 0;
				group.each(function() {
					var thisHeight = $(this).height();
					if(thisHeight > tallest) {
						tallest = thisHeight;
					}
				});
				group.height(tallest);
			}	
			equalHeight($(".box-1 .inner"));
		})
	</script>
        <!fin codigo plantilla >
         <title>.:.CANTERAS GALINDO.:.</title>
         <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
        <link rel="stylesheet" href="css/style1.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
        
        
         <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
      <script>
             $(document).ready(function() {
                $("#formulario").submit(function() {
                    
                    if ($("#nombrecliente").val().length === 0) {
                        $("#errornombrecliente").css("display", "inline");
                        $("#nombrecliente").focus();
                        return false;
                    } else {
                        $("#errornombrecliente").css("display", "none");
                    }
                     if ($("#apellidoscliente").val().length === 0) {
                        $("#errorapellidoscliente").css("display", "inline");
                        $("#apellidoscliente").focus();
                        return false;
                    } else {
                        $("#errorapellidoscliente").css("display", "none");
                    }
                    
                    if ($("#domiciliocliente").val().length === 0) {
                        $("#errordomiciliocliente").css("display", "inline");
                        $("#domiciliocliente").focus();
                        return false;
                    } else {
                        $("#errordomiciliocliente").css("display", "none");
                    }
                     if ($("#emailcliente").val().length === 0) {
                        $("#erroremailcliente").css("display", "inline");
                        $("#emailcliente").focus();
                        return false;
                    } else {
                        $("#erroremailcliente").css("display", "none");
                    }
                     if ($("#telefonocliente").val().length === 0) {
                        $("#errortelefonocliente").css("display", "inline");
                        $("#telefonocliente").focus();
                        return false;
                    } else {
                        $("#errortelefonocliente").css("display", "none");
                    }
                     if ($("#RFC").val().length === 0) {
                        $("#errorRFC").css("display", "inline");
                        $("#RFC").focus();
                        return false;
                    } else {
                        $("#errorRFC").css("display", "none");
                    }
                   

                    return true;
                });
            });
            </script>
        
    </head>
    <body>
        
        <!inicio codigo plantilla>
        <header>
    <div class="inner">
        
        <h1>Canteras Galindo</h1>
        <div class="fright">
            <div class="header-meta">
 
                <div class="col-elem">
                    AppJJ<br>
                    By:
                    <span class="text">
                        ConMonisa
                    </span>
                </div>
            </div>
    <!fin codigo plantilla>
          
  <br /><br />
        <%

            //de acuerdo al tipo de empleado mostramos el contenido correspondiente
            if (session.getAttribute("tipoempleado").toString().equals("1")) {


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
	<li class="topmenu"><a href="catalogo.html" style="height:32px;line-height:32px;"><span><img src="css/cube.png" alt=""/>Producto</span></a>
	</li>

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
	<li class="topmenu"><a href="catalogo.html" style="height:32px;line-height:32px;"><span><img src="css/cube.png" alt=""/>Producto</span></a>
	</li>

	<li class="topmenu"><a href="Salir" style="height:32px;line-height:32px;"><img src="css/lock2.png" alt=""/>Salir</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
            
            
<!--Fin-->
            
            
        <%
            }
        %>
        
<br /><br />
 <h2> Nuevo  Cliente</h2>
 <center>
        <form action="insertarcliente2.jsp" method="POST" id="formulario">
            <table style="font-size:12pt" >
                <thead  style="color:black">
                    <tr>
                        <th colspan="2">
                Proporciona los siguientes datos 
                            <br /><br />
                        </th>
                        <br /><br />
                    </tr>
                </thead>
                <!-- Fin de encabezado de tabla -->
                
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td  align="right">Nombre Cliente:</td>
                    <td align="left">
                        <input type="text" name="nombrecliente" id="nombrecliente" />
                        <div id="errornombrecliente" style="display: none;color:red;">
                            **Debes de ingresar un nombre**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td align="right">Apellidos Cliente:</td>
                    <td align="left">
                        <input type="text" name="apellidoscliente" id="apellidoscliente"  />
                        <div id="errorapellidoscliente" style="display: none;color:red;">
                            **Debes de ingresar tus apellidos**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
           <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td align="right">Domicilio Cliente:</td>
                    <td align="left">
                        <input type="text" name="domiciliocliente" id="domiciliocliente" />
                        <div id="errordomiciliocliente" style="display: none;color:red;">
                            **Debes de ingresar tu domicilio**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td align="right">Email Cliente:</td>
                    <td align="left">
                        <input type="text" name="emailcliente" id="emailcliente"  />
                        <div id="erroremailcliente" style="display: none;color:red;">
                            **Debes de ingresar tu email**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td align="right">Telefono Cliente:</td>
                    <td align="left">
                        <input type="text" name="telefonocliente" id="telefonocliente" />
                        <div id="errortelefonocliente" style="display: none;color:red;">
                            **Debes de ingresar tu telefono**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td align="right">RFC:</td>
                    <td align="left">
                        <input type="text" name="RFC" id="RFC" />
                        <div id="errorRFC" style="display: none;color:red;">
                            **Debes de ingresar tu RFC**
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                <!-- Inicio de Fila -->
                <tr style="color:black">
                    <td colspan="2" align="center">
                        <br />
                        <input type="submit" value="Guardar" name="comprar"/>
                        <br /><br />
                        <br /><br />

                        </td>
                        </tr>
                <!--Fin de Fila -->
            </table>
            
            <image src="img/3t.jpg" alt="" />
        </form>
     </center>
             <br /><br />
             <br /><br />

    <!-- Footer -->
<footer>
    <div class="copyright">
        &copy; 2015 <strong class="Canteras ">Canteras Galindo</strong>
        <div> Contactanos:Conmonisa14@gmail.com</div>
		
    </div>
    <ul class="social-list">
    	
        <li><a href="#"><img src="images/social-link-2.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/social-link-3.jpg" alt=""></a></li>  
    </ul>
</footer>
   </body>
</html>
