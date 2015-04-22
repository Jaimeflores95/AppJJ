<%-- 
    Document   : index
    Created on : 23/02/2015, 11:57:42 AM
    Author     : AppJJ
    Descripción: Es la primera pantalla que despliega el sitio, en la cual muestra el formulario para que el empleado pueda acceder.
    Version 1.2: Cambio de diseño(plantilla y colores del menu)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        
            <br /><br />
            <br /><br />
        <title>.:.CANTERAS GALINDO.:.</title>
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
       
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

    <center>
        <form action="Login" method="POST" id="formulario">
             <table style="font-size:12pt" border="0">
                 <thead style="color:navy">
                <th colspan="2" align="center">
                    Introduce tu usuario y contrase&ntilde;a:
                    <br /><br />
                </th>
                </thead>
                <tbody style="color:navy">
                    <tr>
                        <td align="center">
                            <div align="center">Empleado:</div>
                        </td>
                        <td>
                            <div align="center">
                                <input type="text" name="idempleado" id="idempleado" />
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <div align="center">Password:</div>
                        </td >
                        <td align="center">
                            <div align="center">
                                <input type="password" name="password" id="password" />
                            </div>
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" align="center">
                            <br />
                            <input type="submit" value="Entrar" />
                            
                        </td>
                    </tr>
                </tbody>
                
            </table>
            <br /><br />
            
            <image src="img/4g.jpg" alt="" />
        </form>
    </center>
            
            
            <br /><br />
            <br /><br />
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
