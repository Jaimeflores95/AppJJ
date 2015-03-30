<%-- 
    Document   : editarempleado
    Created on : 26/02/2015, 11:57:42 AM
    Author     : ConMonisa
    Descripción: Este jsp muestra un fomulario en la página para editar empleado.
--%>



<%@page import="com.canteras.dao.EmpresaDAO"%>
<%@page import="com.canteras.clases.Empleado"%>
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
        <title>.:.Canteras Galindo.:.</title>
               
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function() {
                $("#formulario").submit(function() {
                    if ($("#idempleado").val().length === 0) {
                        $("#erroridempleado").css("display", "inline");
                        $("#idempleado").focus();
                        return false;
                    } else {
                        $("#erroridempleado").css("display", "none");
                    }

                    if ($("#password").val().length === 0) {
                        $("#errorpassword").css("display", "inline");
                        $("#password").focus();
                        return false;
                    } else {
                        $("#errorpassword").css("display", "none");
                    }

                    if ($("#password2").val().length === 0) {
                        $("#errorpassword2").css("display", "inline");
                        $("#password2").focus();
                        return false;
                    } else {
                        $("#errorpassword2").css("display", "none");
                    }

                    //Verificamos que las contraseñas coincidan
                    if ($("#password3").val() != $("#password3").val()) {
                        $("#errorpassword3").css("display", "inline");
                        $("#password3").focus();
                        return false;

                    }
                    else {
                        $("#errorpassword3").css("display", "none");
                    }
                     if ($("#nombrempleado").val().length === 0) {
                        $("#errornombrempleado").css("display", "inline");
                        $("#nombrempleado").focus();
                        return false;
                    } else {
                        $("#errornombrempleado").css("display", "none");
                    }
                    
                    if ($("#tipoempleado option:selected").val()== "--") {
                        $("#errortipoempleado").css("display", "inline");
                        $("#tipoempleado").focus();
                        return false;
                    } else {
                        $("#errortipoempleado").css("display", "none");
                    }
                    if ($("#edad").val().length == 0 || isNaN($("#edad").val())) {
                        $("#erroredad").css("display", "inline");
                        $("#edad").focus();
                        return false;
                    } else {
                        $("#erroredad").css("display", "none");
                    }
                      if ($("#direccion").val().length === 0) {
                        $("#errordireccion").css("display", "inline");
                        $("#direccion").focus();
                        return false;
                    } else {
                        $("#errordireccion").css("display", "none");
                    }

                    return true;
                });
            });

        </script>
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
        <link rel="stylesheet" href="css/style1.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
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
	<li class="topmenu"><a href="catalogo.html" style="height:32px;line-height:32px;"><span><img src="css/cube.png" alt=""/>Producto</span></a>
	</li>
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
<!--Fin-->    
        <%

            Empleado e = new Empleado();
            EmpresaDAO edao = new EmpresaDAO();

            String idempleado = request.getParameter("idempleado");

            e = edao.buscarEmpleado(idempleado);

            if (e == null) {


        %>
        <div style="color:red">
            No se encontr&oacute; el empleado
        </div>
        <br /><br />
        <a href="buscarempleados.jsp">Buscar otro</a>
        <%        } else {
        %>

        <h2>Editar empleado</h2>
        <form action="editarempleado2.jsp" method="POST" id="formulario">
            <table>
                <thead>
                    <tr>
                        <th colspan="2">
                            Proporciona los siguientes datos
                        </th>
                    </tr>
                </thead>
                <!-- Fin de encabezado de tabla -->

                <!-- Inicio de Fila -->
                
                              <!--  readonly="true" -->

                
             
                
                <tr>
                    <td align="right">ID empleado:</td>
                    <td align="left">
                        <input type="text" name="idempleado" id="idempleado" value="<%=e.getIdempleado()%>" readonly="true" />
                        <div id="erroridempleado" style="display: none;color:red;">
                            Debes Ingresar el empleado
                        </div>

                        <%
                            if (request.getParameter("errorid") != null) {
                        %>
                        <div id="erroridempleado" style="display:inline;color:red;">
                            El ID seleccionado ya esta en uso
                        </div>
                        <%
                            }
                        %>

                    </td>
                </tr>
                <!--Fin de Fila -->

                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Password:</td>
                    <td align="left">
                        <input type="password" name="password" id="password" value="<%=e.getPassword()%>" />
                        <div id="errorpassword" style="display: none;color:red;">
                            Debes Ingresar una contrase&ntilde;a
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->

                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Confirmar Password</td>
                    <td align="left">
                        <input type="password" name="password2" id="password2" value="<%=e.getPassword()%>" />
                        <div id="errorpassword2" style="display: none;color:red;">
                            Debes de validar la contrase&ntilde;a
                        </div>
                        <div id="errorpassword" style="display: none;color:red;">
                            Las contrase&ntilde;as no coinciden
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->

                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Nombre</td>
                    <td align="left">
                        <input type="text" name="nombrempleado" id="nombrempleado" value="<%=e.getNombrempleado()%>"/>
                        <div id="errornombrempleado" style="display: none;color:red;">
                            Debes de ingresar un nombre
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
                
                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Tipo de empleado</td>
                    <td align="left">
                        <select name="tipoempleado" id="tipoempleado" >
                            <option>--</option>
                            <option value="1">Dueño</option>
                            <option value="2">Empleado Normal</option>
                        </select>
                        <div id="errortipoempleado" style="display: none;color:red;">
                            Debes seleccionar un tipo de empleado
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Edad</td>
                    <td align="left">
                        <input type="text" name="edad" id="edad" value="<%=e.getEdad()%>" />
                        <div id="erroredad" style="display: none;color:red;">
                            Debes de ingresar tu edad
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->
                
                <!-- Inicio de Fila -->
                <tr>
                    <td align="right">Direccion</td>
                    <td align="left">
                        <input type="text" name="direccion" id="edad" value="<%=e.getDireccion()%>" />
                        <div id="errordireccion" style="display: none;color:red;">
                            Debes de ingresar tu direccion
                        </div>
                    </td>
                </tr>
                <!--Fin de Fila -->

                <!-- Inicio de Fila -->
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Guardar" name="guardar" />
                        <input type="submit" value="Eliminar" name="eliminar" />
                        <input type="submit" value="Cancelar" name="cancelar" />
                    </td>

                </tr>
                <!--Fin de Fila -->

            </table>
                        <image src="img/2.jpg" alt="" />
        </form>
        <%
            }
        %>
        
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
