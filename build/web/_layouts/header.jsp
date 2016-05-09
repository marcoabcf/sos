<!DOCTYPE html>
<html lang="PT-br">
    <head> 
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Creative One Page Parallax Template">
        <meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" /> 
        <meta name="author" content=""> 
        <title>SOS</title> 
        <%@include file="requests/_requestsH.jsp" %>
    </head><!--/head-->
    <body>
        <div class="preloader">
            <div class="preloder-wrap">
                <div class="preloder-inner"> 
                    <div class="ball"></div> 
                    <div class="ball"></div> 
                    <div class="ball"></div> 
                    <div class="ball"></div> 
                    <div class="ball"></div> 
                    <div class="ball"></div> 
                    <div class="ball"></div>
                </div>
            </div>
        </div><!--/.preloader-->
        <header id="navigation"> 
            <div class="navbar navbar-inverse navbar-fixed-top" role="banner"> 
                <div class="container"> 
                    <div class="navbar-header"> 
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
                            <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> 
                        </button> 
                        <a class="navbar-brand" href="index.html"><h1><img class="logo" src="<%=request.getContextPath()%>/assets/images/sosseparadopreta.png" alt="logo"></h1></a> 
                    </div> 
                    <div class="collapse navbar-collapse"> 
                        <ul class="nav navbar-nav navbar-right"> 
                            <li><a href="#search"><span class="glyphicon glyphicon-search"></span></a></li> 
                            <li class="scroll active"><a href="#navigation">Início</a></li>
                            <li class="scroll"><a href="#forum">Fórum</a></li> 
                            <li class="scroll"><a href="#faq">FAQ</a></li>
                            <li class="scroll"><a href="#login">Login</a></li> 
                            <li class="scroll"><a href="#contact">Contato</a></li> 
                        </ul> 
                    </div> 
                </div> 
            </div><!--/navbar--> 
        </header> <!--/#navigation--> 
