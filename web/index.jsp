
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!inicio codigo plantilla >
        
        <meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />

        <!fin codigo plantilla >
        <title>.:.Canteras Galindo.:.</title>
        <link rel="stylesheet" href="css/estilos.css" type="text/css"/>
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
						<h1> Canteras Galindo </h1>

        <%
            if (request.getParameter("error") != null) {


        %>
        <div id="error" style="color:red">
            El empleado no existe o la contrase&ntilde;a es incorrecta:
        </div>
        <%             
            }
        %>

					</div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

        <form action="Login" method="POST" id="formulario">
            <table border="0">
                <thead>
                <th colspan="2" align="center">
                    Introduce tu usuario y contrase&ntilde;a:
                </th>
                </thead>
                <tbody>
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
                            
                            <input type="submit" value="Entrar" />
                            
                        </td>
                    </tr>
                </tbody>
                
            </table>
            <image src="img/4g.jpg" alt="" />
        </form>
    </body>
</html>
