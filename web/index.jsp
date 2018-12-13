<%-- 
    Document   : index
    Created on : 13-dic-2018, 1:39:50
    Author     : JOSE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <s:set name="user" value="#session['usuario']"/>
    <head>
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
                        <s:if test="#user!=null">
                        
                        </s:if>
                        <s:else>
                             <li><a href="registro.jsp">Registro</a></li> 
                        </s:else>
                                              
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <s:if test="#user!=null">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Hola, <s:property value="#user.nombre"/> </a></li>
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span>Cerrar sesión</a></li>
                            </s:if>
                            <s:else>
                            <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Iniciar sesión</a></li>
                            </s:else>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">

            <s:if test="#user!=null">
                <div class="login-form">
                    <div class="main-div">
                        <div class="panel">
                            <h2>Bienvendo</h2>
                            <p><s:property value="#user.fullname"/></p>
                             <h2>Perfil: <s:property value="#user.perfil.descripcion"/></h2>
                        </div>
                    </div>
                </div>
            </s:if>            
            <s:else>
                <div class="login-form">
                    <div class="main-div">
                        <div class="panel">
                            <h2>Inicio de Sesion</h2>
                            <p>Por favor ingresa tus credenciales</p>
                        </div>
                        <form id="Login" action="check" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control"  placeholder="usuario" name="usuario">

                            </div>

                            <div class="form-group">

                                <input type="password" class="form-control"   placeholder="Clave" name="clave">

                            </div>

                            <button type="submit" class="btn btn-primary">Entrar</button>

                        </form>
                        <h5 class="text-danger"><s:property value="mensaje"/></h5>
                    </div>

                </div>
            </s:else>

        </div>

    </body>
</html>
