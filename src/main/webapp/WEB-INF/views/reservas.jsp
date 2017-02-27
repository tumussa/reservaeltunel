<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <title>Venta El Túnel</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Unica+One|Bree+Serif" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script> <!-- mini script para probar el datepicker -->
  	$( function datepicker() {
   	 $( "#datepicker" ).datepicker();
 	 } );
  </script>
</head>
<body>
    <div id="header">
        <h1>VenTa El Túnel</h1>
    </div> 
    <form action="r" method="get">   
        <div class="row" align="center" id="form">
            <div class="col-md-5">
                <div class="inputs-form">
                    <p>Elige el día que prefieras:</p>
                    <div class="input-group">
                        <input class="form-control" type="text" name="fecha" id="datepicker">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    </div>
                    <input type="submit" class="btn-primary btn-reservar" name="submit"/>
                </div>
             </div>
            <div class="col-md-7">
                <div class="form-group" id="div-disponibles">
                    <p>HORAS DISPONIBLES</p>
                    <label class="horas-disponibles">
                        <input type="radio" name="hora" value="13:00"/><span>13:00</span>
                    </label>
                    <label class="horas-disponibles">
                        <input type="radio" name="hora" value="14:00"/><span>14:00</span>
                    </label>
                    <label class="horas-disponibles">
                        <input type="radio" name="hora" value="15:00"/><span>15:00</span>
                    </label>
                </div>
                <div class="form-group inputs-form">
                    <label for ="comensales">Número de personas</label>
                    <div class="input-group">
                        <input class="form-control" type="number"   name="comensales" placeholder="(incluido niños)">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    </div>
                </div>
                <div class="form-group inputs-form">
                        <label for ="nombre">Nombre</label>
                        <div class="input-group">
                            <input class="form-control" type="text" name="nombre" placeholder="Introduce tu nombre completo">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        </div>
                        <label for ="telefono">Teléfono</label>
                        <div class="input-group">
                            <input class="form-control" type="tel" name="telefono" placeholder="Teléfono">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                        </div>
                        <label for ="email">Email</label>
                        <div class="input-group">
                            <input class="form-control" type="email" name="mail" placeholder="Email">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        </div>
                </div>
                <div class="form-group inputs-form">
                    <label for="observaciones">Observaciones</label>
                    <textarea placeholder="Aquí puedes introducir datos especiales: intolerancia a alérgenos, personas con movilidad reducida…" class="form-control" rows="6" cols="6" name="observaciones"></textarea>
                </div> 
            </div>
        </div>
    </form>
</body>
</html>