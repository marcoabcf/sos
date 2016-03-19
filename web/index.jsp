<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="PT-br">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>SOS</title>

        <!-- Bootstrap -->
        <link href="assets/css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/sidebar.css" rel="stylesheet">
        <link href="assets/css/portal.css" rel="stylesheet">

        <script src="assets/js/jquery-2.2.1.js"></script>
        <script src="assets/css/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.cycle2.min.js"></script>
    </head>
    <body>
        <%@include file="_layouts/header.jsp" %>

        <div id="wrapper">
            <%@include file="_layouts/sidebar.jsp" %>

            <div id="page-content-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="carousel-back">
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="5000" data-pause="hover">
                                    <div class="carousel-inner" role="listbox">
                                        <div class="item active">
                                            <img src="assets/img/ad.png" alt="...">
                                        </div>
                                        <div class="item">
                                            <img src="assets/img/AD2.jpg " alt="...">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-12 col-md-12">
                            <h2>Panel Heading</h2>
                            <div class="panel panel-default">
                                <div class="panel-heading">Panel Heading</div>
                                <div class="panel-body">Panel Content</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>
