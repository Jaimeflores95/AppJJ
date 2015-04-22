<%-- 
    Document   : listacompras
    Created on : 12/04/2015, 12:26:04 PM
    Author     : AppJJ
    Descripción: Obtiene los datos insertados en la tabla compras, asi mismo contiene in link a editar la compra.
--%>


<%@page import="com.canteras.clases.Compra"%>
<%@page import="com.canteras.dao.EmpresaDAO"%>

<%@page import="java.util.List"%>


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
        <title>Lista</title>
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


<h2>Lista de compras</h2>
<center>
        <table border="0" width="800">
            <thead>
                <tr>
                    <th width="150">ID Compra</th>
                    <th width="150">ID Cliente</th>
                    <th width="250">Nombre Producto</th>
                    <th width="150">Medidas</th>
                    <th width="150">Fecha Compra</th>
                    <th width="150">Total Compra</th>
                </tr>
            </thead>
            <tbody>
                <%
                    EmpresaDAO edao = new EmpresaDAO();
                    List<Compra> listaCompras = edao.getCompras();
                    String link;
                    if (listaCompras != null) {
                        for (int i = 0; i < listaCompras.size(); i++) {

                            //generamos el link para editar la compra
                            link = "editarcompra.jsp?idcompra="
                                    + listaCompras.get(i).getIdcompra();

                            out.println("<tr>");
                            out.println("<td><a href=" + link + ">" + listaCompras.get(i).getIdcompra() + "</a></td>");
                            out.println("<td>" + listaCompras.get(i).getIdcli() + "</td>");
                            out.println("<td>" + listaCompras.get(i).getNombreproducto() + "</td>");
                            out.println("<td>" + listaCompras.get(i).getMedidas() + "</td>");
                            out.println("<td>" + listaCompras.get(i).getFechacompra()+ "</td>");
                            out.println("<td>" + listaCompras.get(i).getTotalcompra()+ "</td>");
                            out.println("</tr>");
                        }
                    } else {
                        out.println("<tr><td colspán='4' align='center'>" + "No se encontraron registros</td></tr>");
                    }
                %>
            </tbody>
            
        </table>
</center>
            <image src="img/2.jpg" alt="" />
  
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
