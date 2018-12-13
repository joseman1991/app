<%-- 
    Document   : index
    Created on : 13-dic-2018, 1:39:50
    Author     : JOSE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <s:set name="user" value="#session['usuario']"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
        <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <title>Inicio</title>
    </head>
    <body id="LoginForm">
        <nav class="navbar navbar-inverse warning">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">Logo</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Inicio</a></li>
                        <li><a href="registro.jsp">Registro</a></li>                        
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Iniciar sesión</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">

            <div class="login-form">
                <div class="main-div">
                    <div class="panel">
                        <h2>Registro</h2>
                        <p>Ingresa tus datos</p>
                    </div>
                    <form id="Login" action="registrar" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="usuario" name="usuario">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Clave" name="clave">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Nombres" name="nombre">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Apellidos" name="apellido">
                        </div>
                        <input type="hidden" name="idperfil" value="2"/>
                        <button type="submit" class="btn btn-primary">Login</button>

                    </form>
                    <h5 class="text-success"><s:property value="mensaje"/></h5>
                </div>

            </div>
        </div>

    </body>
</html>
